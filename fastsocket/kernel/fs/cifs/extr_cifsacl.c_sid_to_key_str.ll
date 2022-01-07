; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsacl.c_sid_to_key_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsacl.c_sid_to_key_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sid = type { i32, i8*, i32*, i32 }

@SID_STRING_BASE_SIZE = common dso_local global i64 0, align 8
@SID_STRING_SUBAUTH_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%cs:S-%hhu\00", align 1
@SIDOWNER = common dso_local global i32 0, align 4
@NUM_AUTHS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"-%hhu\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cifs_sid*, i32)* @sid_to_key_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sid_to_key_str(%struct.cifs_sid* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cifs_sid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.cifs_sid* %0, %struct.cifs_sid** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i64, i64* @SID_STRING_BASE_SIZE, align 8
  %12 = add nsw i64 3, %11
  %13 = load i32, i32* @SID_STRING_SUBAUTH_SIZE, align 4
  %14 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %15 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %13, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %12, %18
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kmalloc(i64 %19, i32 %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i8*, i8** %9, align 8
  store i8* %25, i8** %3, align 8
  br label %102

26:                                               ; preds = %2
  %27 = load i8*, i8** %9, align 8
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SIDOWNER, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 111, i32 103
  %34 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %35 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %10, align 8
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %71, %26
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @NUM_AUTHS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %42
  %47 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %48 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %46
  %56 = load i8*, i8** %10, align 8
  %57 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %58 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %10, align 8
  br label %70

70:                                               ; preds = %55, %46
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %42

74:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %97, %74
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %78 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %83 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le32_to_cpu(i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i8*, i8** %10, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i8*, i8** %10, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %10, align 8
  br label %97

97:                                               ; preds = %81
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %75

100:                                              ; preds = %75
  %101 = load i8*, i8** %9, align 8
  store i8* %101, i8** %3, align 8
  br label %102

102:                                              ; preds = %100, %24
  %103 = load i8*, i8** %3, align 8
  ret i8* %103
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
