; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-fw.c_mpeg4_sequence_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-fw.c_mpeg4_sequence_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32, i32, i32, i32, i32, i32 }

@c = common dso_local global i32 0, align 4
@GO7007_STD_NTSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i8*, i32)* @mpeg4_sequence_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg4_sequence_header(%struct.go7007* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.go7007*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [18 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %11, align 1
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 1, i8* %13, align 1
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 -80, i8* %14, align 1
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load %struct.go7007*, %struct.go7007** %4, align 8
  %17 = getelementptr inbounds %struct.go7007, %struct.go7007* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %15, align 1
  %20 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 1, i8* %22, align 1
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 -75, i8* %23, align 1
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 9, i8* %24, align 1
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 1, i8* %27, align 1
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 1, i8* %31, align 1
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 32, i8* %32, align 1
  %33 = load %struct.go7007*, %struct.go7007** %4, align 8
  %34 = getelementptr inbounds %struct.go7007, %struct.go7007* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.go7007*, %struct.go7007** %4, align 8
  %37 = getelementptr inbounds %struct.go7007, %struct.go7007* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %35, %38
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @c, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = getelementptr inbounds i8, i8* %42, i64 18
  %44 = call i32 @CODE_GEN(i32 %40, i8* %43)
  %45 = load %struct.go7007*, %struct.go7007** %4, align 8
  %46 = getelementptr inbounds %struct.go7007, %struct.go7007* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %64 [
    i32 128, label %48
    i32 129, label %56
  ]

48:                                               ; preds = %3
  %49 = load %struct.go7007*, %struct.go7007** %4, align 8
  %50 = getelementptr inbounds %struct.go7007, %struct.go7007* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GO7007_STD_NTSC, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 3, i32 2
  store i32 %55, i32* %9, align 4
  br label %65

56:                                               ; preds = %3
  %57 = load %struct.go7007*, %struct.go7007** %4, align 8
  %58 = getelementptr inbounds %struct.go7007, %struct.go7007* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GO7007_STD_NTSC, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 5, i32 4
  store i32 %63, i32* %9, align 4
  br label %65

64:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %65

65:                                               ; preds = %64, %56, %48
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  %68 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 0
  %69 = call i32 @memcpy(i8* %67, i8* %68, i32 18)
  %70 = load i32, i32* @c, align 4
  %71 = call i32 @CODE_ADD(i32 %70, i32 401, i32 17)
  %72 = load i32, i32* @c, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @CODE_ADD(i32 %72, i32 %73, i32 4)
  %75 = load i32, i32* @c, align 4
  %76 = call i32 @CODE_ADD(i32 %75, i32 1, i32 4)
  %77 = load i32, i32* @c, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @CODE_ADD(i32 %77, i32 %78, i32 16)
  %80 = load i32, i32* @c, align 4
  %81 = call i32 @CODE_ADD(i32 %80, i32 3, i32 2)
  %82 = load i32, i32* @c, align 4
  %83 = load %struct.go7007*, %struct.go7007** %4, align 8
  %84 = call i32 @vti_bitlen(%struct.go7007* %83)
  %85 = call i32 @CODE_ADD(i32 %82, i32 1001, i32 %84)
  %86 = load i32, i32* @c, align 4
  %87 = call i32 @CODE_ADD(i32 %86, i32 1, i32 1)
  %88 = load i32, i32* @c, align 4
  %89 = load %struct.go7007*, %struct.go7007** %4, align 8
  %90 = getelementptr inbounds %struct.go7007, %struct.go7007* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @CODE_ADD(i32 %88, i32 %91, i32 13)
  %93 = load i32, i32* @c, align 4
  %94 = call i32 @CODE_ADD(i32 %93, i32 1, i32 1)
  %95 = load i32, i32* @c, align 4
  %96 = load %struct.go7007*, %struct.go7007** %4, align 8
  %97 = getelementptr inbounds %struct.go7007, %struct.go7007* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @CODE_ADD(i32 %95, i32 %98, i32 13)
  %100 = load i32, i32* @c, align 4
  %101 = call i32 @CODE_ADD(i32 %100, i32 10288, i32 14)
  %102 = load i32, i32* @c, align 4
  %103 = call i32 @CODE_LENGTH(i32 %102)
  %104 = srem i32 %103, 8
  %105 = sub nsw i32 8, %104
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* @c, align 4
  %107 = call i32 @CODE_ADD(i32 %106, i32 0, i32 1)
  %108 = load i32, i32* @c, align 4
  %109 = load i32, i32* %8, align 4
  %110 = sub nsw i32 %109, 1
  %111 = shl i32 1, %110
  %112 = sub nsw i32 %111, 1
  %113 = load i32, i32* %8, align 4
  %114 = sub nsw i32 %113, 1
  %115 = call i32 @CODE_ADD(i32 %108, i32 %112, i32 %114)
  %116 = load i32, i32* @c, align 4
  %117 = call i32 @CODE_LENGTH(i32 %116)
  %118 = sext i32 %117 to i64
  %119 = add i64 %118, 144
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = and i32 %121, 255
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %5, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  store i8 %123, i8* %125, align 1
  %126 = load i32, i32* %8, align 4
  %127 = ashr i32 %126, 8
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %5, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  store i8 %128, i8* %130, align 1
  %131 = load i32, i32* %8, align 4
  ret i32 %131
}

declare dso_local i32 @CODE_GEN(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @CODE_ADD(i32, i32, i32) #1

declare dso_local i32 @vti_bitlen(%struct.go7007*) #1

declare dso_local i32 @CODE_LENGTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
