; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_get_possible_namespace_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_get_possible_namespace_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.objfile = type { i32* }

@FIRST_LOCAL_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (%struct.objfile*)* @get_possible_namespace_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @get_possible_namespace_block(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %3 = load %struct.objfile*, %struct.objfile** %2, align 8
  %4 = getelementptr inbounds %struct.objfile, %struct.objfile* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.objfile*, %struct.objfile** %2, align 8
  %9 = call i32 @initialize_namespace_symtab(%struct.objfile* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.objfile*, %struct.objfile** %2, align 8
  %12 = getelementptr inbounds %struct.objfile, %struct.objfile* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @BLOCKVECTOR(i32* %13)
  %15 = load i32, i32* @FIRST_LOCAL_BLOCK, align 4
  %16 = call %struct.block* @BLOCKVECTOR_BLOCK(i32 %14, i32 %15)
  ret %struct.block* %16
}

declare dso_local i32 @initialize_namespace_symtab(%struct.objfile*) #1

declare dso_local %struct.block* @BLOCKVECTOR_BLOCK(i32, i32) #1

declare dso_local i32 @BLOCKVECTOR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
