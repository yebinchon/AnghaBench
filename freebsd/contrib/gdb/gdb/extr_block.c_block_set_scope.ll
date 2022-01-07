; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_block.c_block_set_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_block.c_block_set_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.obstack = type { i32 }
%struct.TYPE_2__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @block_set_scope(%struct.block* %0, i8* %1, %struct.obstack* %2) #0 {
  %4 = alloca %struct.block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.obstack*, align 8
  store %struct.block* %0, %struct.block** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.obstack* %2, %struct.obstack** %6, align 8
  %7 = load %struct.block*, %struct.block** %4, align 8
  %8 = load %struct.obstack*, %struct.obstack** %6, align 8
  %9 = call i32 @block_initialize_namespace(%struct.block* %7, %struct.obstack* %8)
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.block*, %struct.block** %4, align 8
  %12 = call %struct.TYPE_2__* @BLOCK_NAMESPACE(%struct.block* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i8* %10, i8** %13, align 8
  ret void
}

declare dso_local i32 @block_initialize_namespace(%struct.block*, %struct.obstack*) #1

declare dso_local %struct.TYPE_2__* @BLOCK_NAMESPACE(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
