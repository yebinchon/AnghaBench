; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4idmap.c_nametoid_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4idmap.c_nametoid_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.ent = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@IDMAP_TYPE_USER = common dso_local global i32 0, align 4
@IDMAP_TYPE_GROUP = common dso_local global i32 0, align 4
@IDMAP_NAMESZ = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CACHE_NEGATIVE = common dso_local global i32 0, align 4
@nametoid_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, i8*, i32)* @nametoid_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nametoid_parse(%struct.cache_detail* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_detail*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ent, align 8
  %9 = alloca %struct.ent*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 10
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %129

25:                                               ; preds = %3
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kmalloc(i32 %31, i32 %32)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %129

39:                                               ; preds = %25
  %40 = call i32 @memset(%struct.ent* %8, i32 0, i32 32)
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = call i32 @qword_get(i8** %6, i8* %41, i32 %42)
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %125

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @memcpy(i32 %48, i8* %49, i32 4)
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = call i32 @qword_get(i8** %6, i8* %51, i32 %52)
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %125

56:                                               ; preds = %46
  %57 = load i8*, i8** %10, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @IDMAP_TYPE_USER, align 4
  br label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @IDMAP_TYPE_GROUP, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 3
  store i32 %65, i32* %66, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = call i32 @qword_get(i8** %6, i8* %67, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @IDMAP_NAMESZ, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %64
  br label %125

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @memcpy(i32 %79, i8* %80, i32 4)
  %82 = call i64 @get_expiry(i8** %6)
  %83 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  br label %125

90:                                               ; preds = %77
  %91 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 1
  %92 = call i32 @get_int(i8** %6, i32* %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %125

98:                                               ; preds = %90
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @ENOENT, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i32, i32* @CACHE_NEGATIVE, align 4
  %105 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = call i32 @set_bit(i32 %104, i32* %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %11, align 4
  %111 = call %struct.ent* @nametoid_lookup(%struct.ent* %8)
  store %struct.ent* %111, %struct.ent** %9, align 8
  %112 = load %struct.ent*, %struct.ent** %9, align 8
  %113 = icmp eq %struct.ent* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %125

115:                                              ; preds = %108
  %116 = load %struct.ent*, %struct.ent** %9, align 8
  %117 = call %struct.ent* @nametoid_update(%struct.ent* %8, %struct.ent* %116)
  store %struct.ent* %117, %struct.ent** %9, align 8
  %118 = load %struct.ent*, %struct.ent** %9, align 8
  %119 = icmp eq %struct.ent* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %125

121:                                              ; preds = %115
  %122 = load %struct.ent*, %struct.ent** %9, align 8
  %123 = getelementptr inbounds %struct.ent, %struct.ent* %122, i32 0, i32 0
  %124 = call i32 @cache_put(%struct.TYPE_2__* %123, i32* @nametoid_cache)
  store i32 0, i32* %11, align 4
  br label %125

125:                                              ; preds = %121, %120, %114, %97, %89, %76, %55, %45
  %126 = load i8*, i8** %10, align 8
  %127 = call i32 @kfree(i8* %126)
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %125, %36, %22
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ent*, i32, i32) #1

declare dso_local i32 @qword_get(i8**, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @get_expiry(i8**) #1

declare dso_local i32 @get_int(i8**, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.ent* @nametoid_lookup(%struct.ent*) #1

declare dso_local %struct.ent* @nametoid_update(%struct.ent*, %struct.ent*) #1

declare dso_local i32 @cache_put(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
