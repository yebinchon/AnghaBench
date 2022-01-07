; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-common.c_gt_pch_note_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-common.c_gt_pch_note_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptr_data = type { i64, i8*, i32, i64, i8* }

@saving_htab = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@gt_pch_p_S = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gt_pch_note_object(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ptr_data**, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, inttoptr (i64 1 to i8*)
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %4
  store i32 0, i32* %5, align 4
  br label %82

17:                                               ; preds = %13
  %18 = load i32, i32* @saving_htab, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @POINTER_HASH(i8* %20)
  %22 = load i32, i32* @INSERT, align 4
  %23 = call i64 @htab_find_slot_with_hash(i32 %18, i8* %19, i32 %21, i32 %22)
  %24 = inttoptr i64 %23 to %struct.ptr_data**
  store %struct.ptr_data** %24, %struct.ptr_data*** %10, align 8
  %25 = load %struct.ptr_data**, %struct.ptr_data*** %10, align 8
  %26 = load %struct.ptr_data*, %struct.ptr_data** %25, align 8
  %27 = icmp ne %struct.ptr_data* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %17
  %29 = load %struct.ptr_data**, %struct.ptr_data*** %10, align 8
  %30 = load %struct.ptr_data*, %struct.ptr_data** %29, align 8
  %31 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %struct.ptr_data**, %struct.ptr_data*** %10, align 8
  %37 = load %struct.ptr_data*, %struct.ptr_data** %36, align 8
  %38 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp eq i8* %39, %40
  br label %42

42:                                               ; preds = %35, %28
  %43 = phi i1 [ false, %28 ], [ %41, %35 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @gcc_assert(i32 %44)
  store i32 0, i32* %5, align 4
  br label %82

46:                                               ; preds = %17
  %47 = call %struct.ptr_data* @xcalloc(i32 40, i32 1)
  %48 = load %struct.ptr_data**, %struct.ptr_data*** %10, align 8
  store %struct.ptr_data* %47, %struct.ptr_data** %48, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.ptr_data**, %struct.ptr_data*** %10, align 8
  %51 = load %struct.ptr_data*, %struct.ptr_data** %50, align 8
  %52 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %51, i32 0, i32 4
  store i8* %49, i8** %52, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.ptr_data**, %struct.ptr_data*** %10, align 8
  %55 = load %struct.ptr_data*, %struct.ptr_data** %54, align 8
  %56 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.ptr_data**, %struct.ptr_data*** %10, align 8
  %59 = load %struct.ptr_data*, %struct.ptr_data** %58, align 8
  %60 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @gt_pch_p_S, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %46
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = add nsw i64 %66, 1
  %68 = load %struct.ptr_data**, %struct.ptr_data*** %10, align 8
  %69 = load %struct.ptr_data*, %struct.ptr_data** %68, align 8
  %70 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %69, i32 0, i32 3
  store i64 %67, i64* %70, align 8
  br label %77

71:                                               ; preds = %46
  %72 = load i8*, i8** %6, align 8
  %73 = call i64 @ggc_get_size(i8* %72)
  %74 = load %struct.ptr_data**, %struct.ptr_data*** %10, align 8
  %75 = load %struct.ptr_data*, %struct.ptr_data** %74, align 8
  %76 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %75, i32 0, i32 3
  store i64 %73, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %64
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.ptr_data**, %struct.ptr_data*** %10, align 8
  %80 = load %struct.ptr_data*, %struct.ptr_data** %79, align 8
  %81 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 8
  store i32 1, i32* %5, align 4
  br label %82

82:                                               ; preds = %77, %42, %16
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @htab_find_slot_with_hash(i32, i8*, i32, i32) #1

declare dso_local i32 @POINTER_HASH(i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local %struct.ptr_data* @xcalloc(i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @ggc_get_size(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
