; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_linuxvfs.c_befs_nls2utf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_linuxvfs.c_befs_nls2utf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.nls_table = type { i32 (i8*, i32, i32*)*, i32 }
%struct.TYPE_2__ = type { %struct.nls_table* }

@.str = private unnamed_addr constant [16 x i8] c"---> nls2utf()\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"befs_nls2utf called with no NLS table loaded.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"befs_nls2utf() cannot allocate memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"<--- nls2utf()\00", align 1
@.str.4 = private unnamed_addr constant [86 x i8] c"Name using charecter set %s contains a charecter that cannot be converted to unicode.\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32, i8**, i32*)* @befs_nls2utf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @befs_nls2utf(%struct.super_block* %0, i8* %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nls_table*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.super_block*, %struct.super_block** %7, align 8
  %21 = call %struct.TYPE_2__* @BEFS_SB(%struct.super_block* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.nls_table*, %struct.nls_table** %22, align 8
  store %struct.nls_table* %23, %struct.nls_table** %12, align 8
  %24 = load i32, i32* %9, align 4
  %25 = mul nsw i32 3, %24
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %19, align 4
  %27 = load %struct.super_block*, %struct.super_block** %7, align 8
  %28 = call i32 @befs_debug(%struct.super_block* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  %30 = icmp ne %struct.nls_table* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %5
  %32 = load %struct.super_block*, %struct.super_block** %7, align 8
  %33 = call i32 (%struct.super_block*, i8*, ...) @befs_error(%struct.super_block* %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %110

36:                                               ; preds = %5
  %37 = load i32, i32* %19, align 4
  %38 = load i32, i32* @GFP_NOFS, align 4
  %39 = call i8* @kmalloc(i32 %37, i32 %38)
  store i8* %39, i8** %18, align 8
  %40 = load i8**, i8*** %10, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i8**, i8*** %10, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = load %struct.super_block*, %struct.super_block** %7, align 8
  %46 = call i32 (%struct.super_block*, i8*, ...) @befs_error(%struct.super_block* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32*, i32** %11, align 8
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %110

50:                                               ; preds = %36
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %81, %50
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %88

55:                                               ; preds = %51
  %56 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  %57 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %56, i32 0, i32 0
  %58 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %57, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %13, align 4
  %65 = sub nsw i32 %63, %64
  %66 = call i32 %58(i8* %62, i32 %65, i32* %15)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %98

70:                                               ; preds = %55
  %71 = load i32, i32* %15, align 4
  %72 = load i8*, i8** %18, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = call i32 @utf32_to_utf8(i32 %71, i8* %75, i32 3)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %98

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %14, align 4
  br label %51

88:                                               ; preds = %51
  %89 = load i8*, i8** %18, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8 0, i8* %92, align 1
  %93 = load i32, i32* %14, align 4
  %94 = load i32*, i32** %11, align 8
  store i32 %93, i32* %94, align 4
  %95 = load %struct.super_block*, %struct.super_block** %7, align 8
  %96 = call i32 @befs_debug(%struct.super_block* %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %6, align 4
  br label %110

98:                                               ; preds = %79, %69
  %99 = load %struct.super_block*, %struct.super_block** %7, align 8
  %100 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  %101 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (%struct.super_block*, i8*, ...) @befs_error(%struct.super_block* %99, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  %104 = load %struct.super_block*, %struct.super_block** %7, align 8
  %105 = call i32 @befs_debug(%struct.super_block* %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i8*, i8** %18, align 8
  %107 = call i32 @kfree(i8* %106)
  %108 = load i32, i32* @EILSEQ, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %98, %88, %44, %31
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local %struct.TYPE_2__* @BEFS_SB(%struct.super_block*) #1

declare dso_local i32 @befs_debug(%struct.super_block*, i8*) #1

declare dso_local i32 @befs_error(%struct.super_block*, i8*, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @utf32_to_utf8(i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
