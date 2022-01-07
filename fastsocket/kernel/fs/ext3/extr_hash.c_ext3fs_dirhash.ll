; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_hash.c_ext3fs_dirhash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_hash.c_ext3fs_dirhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dx_hash_info = type { i32, i32, i32, i64* }

@EXT3_HTREE_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3fs_dirhash(i8* %0, i32 %1, %struct.dx_hash_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dx_hash_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [8 x i32], align 16
  %13 = alloca [4 x i32], align 16
  %14 = alloca void (i8*, i32, i32*, i32)*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dx_hash_info* %2, %struct.dx_hash_info** %7, align 8
  store i32 0, i32* %9, align 4
  store void (i8*, i32, i32*, i32)* @str2hashbuf_signed, void (i8*, i32, i32*, i32)** %14, align 8
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 1732584193, i32* %15, align 16
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 -271733879, i32* %16, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 -1732584194, i32* %17, align 8
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  store i32 271733878, i32* %18, align 4
  %19 = load %struct.dx_hash_info*, %struct.dx_hash_info** %7, align 8
  %20 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %19, i32 0, i32 3
  %21 = load i64*, i64** %20, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %51

23:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.dx_hash_info*, %struct.dx_hash_info** %7, align 8
  %29 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %28, i32 0, i32 3
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %41

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %24

41:                                               ; preds = %36, %24
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %46 = load %struct.dx_hash_info*, %struct.dx_hash_info** %7, align 8
  %47 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %46, i32 0, i32 3
  %48 = load i64*, i64** %47, align 8
  %49 = call i32 @memcpy(i32* %45, i64* %48, i32 16)
  br label %50

50:                                               ; preds = %44, %41
  br label %51

51:                                               ; preds = %50, %3
  %52 = load %struct.dx_hash_info*, %struct.dx_hash_info** %7, align 8
  %53 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %109 [
    i32 130, label %55
    i32 131, label %59
    i32 132, label %63
    i32 133, label %64
    i32 128, label %86
    i32 129, label %87
  ]

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @dx_hack_hash_unsigned(i8* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  br label %112

59:                                               ; preds = %51
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @dx_hack_hash_signed(i8* %60, i32 %61)
  store i32 %62, i32* %8, align 4
  br label %112

63:                                               ; preds = %51
  store void (i8*, i32, i32*, i32)* @str2hashbuf_unsigned, void (i8*, i32, i32*, i32)** %14, align 8
  br label %64

64:                                               ; preds = %51, %63
  %65 = load i8*, i8** %5, align 8
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %69, %64
  %67 = load i32, i32* %6, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load void (i8*, i32, i32*, i32)*, void (i8*, i32, i32*, i32)** %14, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %6, align 4
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  call void %70(i8* %71, i32 %72, i32* %73, i32 8)
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %76 = call i32 @half_md4_transform(i32* %74, i32* %75)
  %77 = load i32, i32* %6, align 4
  %78 = sub nsw i32 %77, 32
  store i32 %78, i32* %6, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 32
  store i8* %80, i8** %10, align 8
  br label %66

81:                                               ; preds = %66
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %9, align 4
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %8, align 4
  br label %112

86:                                               ; preds = %51
  store void (i8*, i32, i32*, i32)* @str2hashbuf_unsigned, void (i8*, i32, i32*, i32)** %14, align 8
  br label %87

87:                                               ; preds = %51, %86
  %88 = load i8*, i8** %5, align 8
  store i8* %88, i8** %10, align 8
  br label %89

89:                                               ; preds = %92, %87
  %90 = load i32, i32* %6, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load void (i8*, i32, i32*, i32)*, void (i8*, i32, i32*, i32)** %14, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load i32, i32* %6, align 4
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  call void %93(i8* %94, i32 %95, i32* %96, i32 4)
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %99 = call i32 @TEA_transform(i32* %97, i32* %98)
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %100, 16
  store i32 %101, i32* %6, align 4
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 16
  store i8* %103, i8** %10, align 8
  br label %89

104:                                              ; preds = %89
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %106 = load i32, i32* %105, align 16
  store i32 %106, i32* %8, align 4
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %9, align 4
  br label %112

109:                                              ; preds = %51
  %110 = load %struct.dx_hash_info*, %struct.dx_hash_info** %7, align 8
  %111 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %110, i32 0, i32 1
  store i32 0, i32* %111, align 4
  store i32 -1, i32* %4, align 4
  br label %130

112:                                              ; preds = %104, %81, %59, %55
  %113 = load i32, i32* %8, align 4
  %114 = and i32 %113, -2
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @EXT3_HTREE_EOF, align 4
  %117 = shl i32 %116, 1
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load i32, i32* @EXT3_HTREE_EOF, align 4
  %121 = sub nsw i32 %120, 1
  %122 = shl i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %119, %112
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.dx_hash_info*, %struct.dx_hash_info** %7, align 8
  %126 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.dx_hash_info*, %struct.dx_hash_info** %7, align 8
  %129 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %123, %109
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local void @str2hashbuf_signed(i8*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @dx_hack_hash_unsigned(i8*, i32) #1

declare dso_local i32 @dx_hack_hash_signed(i8*, i32) #1

declare dso_local void @str2hashbuf_unsigned(i8*, i32, i32*, i32) #1

declare dso_local i32 @half_md4_transform(i32*, i32*) #1

declare dso_local i32 @TEA_transform(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
