; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_ecryptfs_encode_for_filename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_ecryptfs_encode_for_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@portable_filename_chars = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecryptfs_encode_for_filename(i8* %0, i64* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [3 x i8], align 1
  %13 = alloca i8*, align 8
  %14 = alloca [4 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i64*, i64** %6, align 8
  store i64 0, i64* %18, align 8
  br label %173

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = udiv i64 %20, 3
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %8, align 8
  %23 = urem i64 %22, 3
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = sub i64 %28, 3
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = call i32 @memcpy(i8* %26, i8* %30, i32 3)
  br label %60

32:                                               ; preds = %19
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %9, align 8
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 2
  store i8 0, i8* %35, align 1
  %36 = load i64, i64* %8, align 8
  %37 = urem i64 %36, 3
  switch i64 %37, label %59 [
    i64 1, label %38
    i64 2, label %46
  ]

38:                                               ; preds = %32
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  store i8 %43, i8* %44, align 1
  %45 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 1
  store i8 0, i8* %45, align 1
  br label %59

46:                                               ; preds = %32
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = sub i64 %48, 2
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  store i8 %51, i8* %52, align 1
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = sub i64 %54, 1
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 1
  store i8 %57, i8* %58, align 1
  br label %59

59:                                               ; preds = %46, %32, %38
  br label %60

60:                                               ; preds = %59, %25
  %61 = load i64, i64* %9, align 8
  %62 = mul i64 %61, 4
  %63 = load i64*, i64** %6, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  br label %173

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %84, %67
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %172

72:                                               ; preds = %68
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %9, align 8
  %75 = sub i64 %74, 1
  %76 = icmp eq i64 %73, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  store i8* %78, i8** %13, align 8
  br label %84

79:                                               ; preds = %72
  %80 = load i8*, i8** %7, align 8
  %81 = load i64, i64* %10, align 8
  %82 = mul i64 %81, 3
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  store i8* %83, i8** %13, align 8
  br label %84

84:                                               ; preds = %79, %77
  %85 = load i8*, i8** %13, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = ashr i32 %88, 2
  %90 = and i32 %89, 63
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  store i8 %91, i8* %92, align 1
  %93 = load i8*, i8** %13, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl i32 %96, 4
  %98 = and i32 %97, 48
  %99 = load i8*, i8** %13, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = ashr i32 %102, 4
  %104 = and i32 %103, 15
  %105 = or i32 %98, %104
  %106 = trunc i32 %105 to i8
  %107 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 1
  store i8 %106, i8* %107, align 1
  %108 = load i8*, i8** %13, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = shl i32 %111, 2
  %113 = and i32 %112, 60
  %114 = load i8*, i8** %13, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = ashr i32 %117, 6
  %119 = and i32 %118, 3
  %120 = or i32 %113, %119
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 2
  store i8 %121, i8* %122, align 1
  %123 = load i8*, i8** %13, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 2
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 63
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 3
  store i8 %128, i8* %129, align 1
  %130 = load i8*, i8** @portable_filename_chars, align 8
  %131 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = load i8*, i8** %5, align 8
  %137 = load i64, i64* %11, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %11, align 8
  %139 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8 %135, i8* %139, align 1
  %140 = load i8*, i8** @portable_filename_chars, align 8
  %141 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 1
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds i8, i8* %140, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = load i8*, i8** %5, align 8
  %147 = load i64, i64* %11, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %11, align 8
  %149 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8 %145, i8* %149, align 1
  %150 = load i8*, i8** @portable_filename_chars, align 8
  %151 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 2
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = load i8*, i8** %5, align 8
  %157 = load i64, i64* %11, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %11, align 8
  %159 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8 %155, i8* %159, align 1
  %160 = load i8*, i8** @portable_filename_chars, align 8
  %161 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 3
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = load i8*, i8** %5, align 8
  %167 = load i64, i64* %11, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %11, align 8
  %169 = getelementptr inbounds i8, i8* %166, i64 %167
  store i8 %165, i8* %169, align 1
  %170 = load i64, i64* %10, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %10, align 8
  br label %68

172:                                              ; preds = %68
  br label %173

173:                                              ; preds = %172, %66, %17
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
