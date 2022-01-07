; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-fw.c_mpeg4_frame_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-fw.c_mpeg4_frame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32 }

@c = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i8*, i32, i32)* @mpeg4_frame_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg4_frame_header(%struct.go7007* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.go7007*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @c, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 6
  %14 = call i32 @CODE_GEN(i32 %11, i8* %13)
  %15 = load %struct.go7007*, %struct.go7007** %5, align 8
  %16 = getelementptr inbounds %struct.go7007, %struct.go7007* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 4
  %19 = load %struct.go7007*, %struct.go7007** %5, align 8
  %20 = getelementptr inbounds %struct.go7007, %struct.go7007* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 4
  %23 = mul nsw i32 %18, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @c, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 128
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 2
  %29 = call i32 @CODE_ADD(i32 %24, i32 %28, i32 2)
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @c, align 4
  %34 = call i32 @CODE_ADD(i32 %33, i32 1, i32 1)
  br label %35

35:                                               ; preds = %32, %4
  %36 = load i32, i32* @c, align 4
  %37 = call i32 @CODE_ADD(i32 %36, i32 1, i32 2)
  %38 = load i32, i32* @c, align 4
  %39 = load %struct.go7007*, %struct.go7007** %5, align 8
  %40 = call i32 @vti_bitlen(%struct.go7007* %39)
  %41 = call i32 @CODE_ADD(i32 %38, i32 0, i32 %40)
  %42 = load i32, i32* @c, align 4
  %43 = call i32 @CODE_ADD(i32 %42, i32 3, i32 2)
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 128
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* @c, align 4
  %48 = call i32 @CODE_ADD(i32 %47, i32 0, i32 1)
  br label %49

49:                                               ; preds = %46, %35
  %50 = load i32, i32* @c, align 4
  %51 = call i32 @CODE_ADD(i32 %50, i32 12, i32 11)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 128
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @c, align 4
  %56 = call i32 @CODE_ADD(i32 %55, i32 4, i32 3)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 131
  br i1 %59, label %60, label %85

60:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %81, %60
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  switch i32 %66, label %80 [
    i32 128, label %67
    i32 129, label %70
    i32 130, label %73
    i32 132, label %76
    i32 131, label %79
  ]

67:                                               ; preds = %65
  %68 = load i32, i32* @c, align 4
  %69 = call i32 @CODE_ADD(i32 %68, i32 1, i32 1)
  br label %80

70:                                               ; preds = %65
  %71 = load i32, i32* @c, align 4
  %72 = call i32 @CODE_ADD(i32 %71, i32 71, i32 8)
  br label %80

73:                                               ; preds = %65
  %74 = load i32, i32* @c, align 4
  %75 = call i32 @CODE_ADD(i32 %74, i32 39, i32 7)
  br label %80

76:                                               ; preds = %65
  %77 = load i32, i32* @c, align 4
  %78 = call i32 @CODE_ADD(i32 %77, i32 95, i32 8)
  br label %80

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %65, %79, %76, %73, %70, %67
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %61

84:                                               ; preds = %61
  br label %85

85:                                               ; preds = %84, %57
  %86 = load i32, i32* @c, align 4
  %87 = call i32 @CODE_LENGTH(i32 %86)
  %88 = srem i32 %87, 8
  %89 = sub nsw i32 8, %88
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* @c, align 4
  %91 = call i32 @CODE_ADD(i32 %90, i32 0, i32 1)
  %92 = load i32, i32* @c, align 4
  %93 = load i32, i32* %9, align 4
  %94 = sub nsw i32 %93, 1
  %95 = shl i32 1, %94
  %96 = sub nsw i32 %95, 1
  %97 = load i32, i32* %9, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i32 @CODE_ADD(i32 %92, i32 %96, i32 %98)
  %100 = load i32, i32* @c, align 4
  %101 = call i32 @CODE_LENGTH(i32 %100)
  %102 = add nsw i32 %101, 32
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, 255
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %6, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  store i8 %105, i8* %107, align 1
  %108 = load i32, i32* %9, align 4
  %109 = ashr i32 %108, 8
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %6, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8 %110, i8* %112, align 1
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 2
  store i8 0, i8* %114, align 1
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 3
  store i8 0, i8* %116, align 1
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 4
  store i8 1, i8* %118, align 1
  %119 = load i8*, i8** %6, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 5
  store i8 -74, i8* %120, align 1
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local i32 @CODE_GEN(i32, i8*) #1

declare dso_local i32 @CODE_ADD(i32, i32, i32) #1

declare dso_local i32 @vti_bitlen(%struct.go7007*) #1

declare dso_local i32 @CODE_LENGTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
