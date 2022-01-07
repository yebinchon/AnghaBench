; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-common.c_gt_pch_note_reorder.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-common.c_gt_pch_note_reorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptr_data = type { i8*, i32 }

@saving_htab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gt_pch_note_reorder(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ptr_data*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, inttoptr (i64 1 to i8*)
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  br label %35

14:                                               ; preds = %10
  %15 = load i32, i32* @saving_htab, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @POINTER_HASH(i8* %17)
  %19 = call %struct.ptr_data* @htab_find_with_hash(i32 %15, i8* %16, i32 %18)
  store %struct.ptr_data* %19, %struct.ptr_data** %7, align 8
  %20 = load %struct.ptr_data*, %struct.ptr_data** %7, align 8
  %21 = icmp ne %struct.ptr_data* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load %struct.ptr_data*, %struct.ptr_data** %7, align 8
  %24 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %25, %26
  br label %28

28:                                               ; preds = %22, %14
  %29 = phi i1 [ false, %14 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @gcc_assert(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.ptr_data*, %struct.ptr_data** %7, align 8
  %34 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %28, %13
  ret void
}

declare dso_local %struct.ptr_data* @htab_find_with_hash(i32, i8*, i32) #1

declare dso_local i32 @POINTER_HASH(i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
