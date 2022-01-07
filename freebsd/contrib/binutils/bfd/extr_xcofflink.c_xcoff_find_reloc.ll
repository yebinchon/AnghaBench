; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_find_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_find_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_reloc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.internal_reloc*, i32, i64)* @xcoff_find_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcoff_find_reloc(%struct.internal_reloc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.internal_reloc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.internal_reloc* %0, %struct.internal_reloc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load %struct.internal_reloc*, %struct.internal_reloc** %5, align 8
  %19 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %18, i64 0
  %20 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %92

25:                                               ; preds = %17, %14
  store i32 0, i32* %4, align 4
  br label %92

26:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %58, %26
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %34, %35
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %10, align 4
  %38 = load %struct.internal_reloc*, %struct.internal_reloc** %5, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %38, i64 %40
  %42 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %9, align 4
  br label %58

49:                                               ; preds = %33
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %8, align 4
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %8, align 4
  br label %59

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %47
  br label %28

59:                                               ; preds = %55, %28
  %60 = load %struct.internal_reloc*, %struct.internal_reloc** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %60, i64 %62
  %64 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %92

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %87, %71
  %73 = load i32, i32* %8, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load %struct.internal_reloc*, %struct.internal_reloc** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %76, i64 %79
  %81 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = icmp eq i64 %82, %83
  br label %85

85:                                               ; preds = %75, %72
  %86 = phi i1 [ false, %72 ], [ %84, %75 ]
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %8, align 4
  br label %72

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %68, %25, %24
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
