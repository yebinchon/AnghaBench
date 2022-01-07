; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_debug.c_print_hex_dump_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_debug.c_print_hex_dump_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%s%s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"0x%04lx: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%.2x \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"   \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_hex_dump_bytes(i32 %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [58 x i8], align 16
  %10 = alloca [17 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = bitcast [17 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 17, i1 false)
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %11, align 8
  %17 = getelementptr inbounds [58 x i8], [58 x i8]* %9, i64 0, i64 0
  store i8* %17, i8** %12, align 8
  store i64 0, i64* %13, align 8
  br label %18

18:                                               ; preds = %81, %4
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %84

22:                                               ; preds = %18
  %23 = load i64, i64* %13, align 8
  %24 = urem i64 %23, 16
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load i8*, i8** %12, align 8
  %28 = getelementptr inbounds [58 x i8], [58 x i8]* %9, i64 0, i64 0
  %29 = icmp ne i8* %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds [58 x i8], [58 x i8]* %9, i64 0, i64 0
  %34 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 0
  %35 = call i32 @__fprintf(i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %33, i8* %34)
  %36 = getelementptr inbounds [58 x i8], [58 x i8]* %9, i64 0, i64 0
  store i8* %36, i8** %12, align 8
  br label %37

37:                                               ; preds = %30, %26
  %38 = load i8*, i8** %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = call i32 (i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i8*, i8** %12, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %12, align 8
  br label %44

44:                                               ; preds = %37, %22
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i8*, i8** %12, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %12, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @isprint(i8 zeroext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %44
  %62 = load i8*, i8** %11, align 8
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @isascii(i8 zeroext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i8*, i8** %11, align 8
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  br label %75

74:                                               ; preds = %61, %44
  br label %75

75:                                               ; preds = %74, %68
  %76 = phi i32 [ %73, %68 ], [ 46, %74 ]
  %77 = trunc i32 %76 to i8
  %78 = load i64, i64* %13, align 8
  %79 = urem i64 %78, 16
  %80 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 %79
  store i8 %77, i8* %80, align 1
  br label %81

81:                                               ; preds = %75
  %82 = load i64, i64* %13, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %13, align 8
  br label %18

84:                                               ; preds = %18
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds [58 x i8], [58 x i8]* %9, i64 0, i64 0
  %87 = icmp ne i8* %85, %86
  br i1 %87, label %88, label %118

88:                                               ; preds = %84
  %89 = load i64, i64* %13, align 8
  %90 = urem i64 %89, 16
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %88
  %93 = load i64, i64* %13, align 8
  %94 = urem i64 %93, 16
  %95 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 %94
  store i8 0, i8* %95, align 1
  store i64 0, i64* %14, align 8
  br label %96

96:                                               ; preds = %108, %92
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %13, align 8
  %99 = urem i64 %98, 16
  %100 = sub i64 16, %99
  %101 = icmp ult i64 %97, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load i8*, i8** %12, align 8
  %104 = call i32 (i8*, i8*, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i8*, i8** %12, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %12, align 8
  br label %108

108:                                              ; preds = %102
  %109 = load i64, i64* %14, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %14, align 8
  br label %96

111:                                              ; preds = %96
  br label %112

112:                                              ; preds = %111, %88
  %113 = load i32, i32* %5, align 4
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds [58 x i8], [58 x i8]* %9, i64 0, i64 0
  %116 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 0
  %117 = call i32 @__fprintf(i32 %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %114, i8* %115, i8* %116)
  br label %118

118:                                              ; preds = %112, %84
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__fprintf(i32, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i64 @isprint(i8 zeroext) #2

declare dso_local i64 @isascii(i8 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
