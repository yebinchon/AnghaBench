; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_block.c_block_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_block.c_block_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @block_scope(%struct.block* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.block*, align 8
  store %struct.block* %0, %struct.block** %3, align 8
  br label %4

4:                                                ; preds = %23, %1
  %5 = load %struct.block*, %struct.block** %3, align 8
  %6 = icmp ne %struct.block* %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = load %struct.block*, %struct.block** %3, align 8
  %9 = call %struct.TYPE_2__* @BLOCK_NAMESPACE(%struct.block* %8)
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load %struct.block*, %struct.block** %3, align 8
  %13 = call %struct.TYPE_2__* @BLOCK_NAMESPACE(%struct.block* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.block*, %struct.block** %3, align 8
  %19 = call %struct.TYPE_2__* @BLOCK_NAMESPACE(%struct.block* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %2, align 8
  br label %27

22:                                               ; preds = %11, %7
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.block*, %struct.block** %3, align 8
  %25 = call %struct.block* @BLOCK_SUPERBLOCK(%struct.block* %24)
  store %struct.block* %25, %struct.block** %3, align 8
  br label %4

26:                                               ; preds = %4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %27

27:                                               ; preds = %26, %17
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

declare dso_local %struct.TYPE_2__* @BLOCK_NAMESPACE(%struct.block*) #1

declare dso_local %struct.block* @BLOCK_SUPERBLOCK(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
