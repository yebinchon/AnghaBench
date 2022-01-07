; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4idmap.c_idtoname_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4idmap.c_idtoname_parse.c"
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
@CACHE_NEGATIVE = common dso_local global i32 0, align 4
@IDMAP_NAMESZ = common dso_local global i32 0, align 4
@idtoname_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, i8*, i32)* @idtoname_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idtoname_parse(%struct.cache_detail* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_detail*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ent, align 8
  %9 = alloca %struct.ent*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 10
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %142

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  store i8 0, i8* %32, align 1
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmalloc(i32 %33, i32 %34)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %142

41:                                               ; preds = %27
  %42 = call i32 @memset(%struct.ent* %8, i32 0, i32 32)
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = call i32 @qword_get(i8** %6, i8* %43, i32 %44)
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %138

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @memcpy(i32 %50, i8* %51, i32 4)
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = call i32 @qword_get(i8** %6, i8* %53, i32 %54)
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %138

58:                                               ; preds = %48
  %59 = load i8*, i8** %10, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @IDMAP_TYPE_USER, align 4
  br label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @IDMAP_TYPE_GROUP, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 3
  store i32 %67, i32* %68, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = call i32 @qword_get(i8** %6, i8* %69, i32 %70)
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %138

74:                                               ; preds = %66
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @simple_strtoul(i8* %75, i8** %11, i32 10)
  %77 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 2
  store i32 %76, i32* %77, align 4
  %78 = load i8*, i8** %11, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = icmp eq i8* %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %138

82:                                               ; preds = %74
  %83 = call i64 @get_expiry(i8** %6)
  %84 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %138

91:                                               ; preds = %82
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %13, align 4
  %94 = call %struct.ent* @idtoname_lookup(%struct.ent* %8)
  store %struct.ent* %94, %struct.ent** %9, align 8
  %95 = load %struct.ent*, %struct.ent** %9, align 8
  %96 = icmp ne %struct.ent* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  br label %138

98:                                               ; preds = %91
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %13, align 4
  %101 = load i8*, i8** %10, align 8
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = call i32 @qword_get(i8** %6, i8* %101, i32 %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %138

107:                                              ; preds = %98
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* @CACHE_NEGATIVE, align 4
  %112 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = call i32 @set_bit(i32 %111, i32* %113)
  br label %126

115:                                              ; preds = %107
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @IDMAP_NAMESZ, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %138

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = call i32 @memcpy(i32 %122, i8* %123, i32 4)
  br label %125

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125, %110
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %13, align 4
  %129 = load %struct.ent*, %struct.ent** %9, align 8
  %130 = call %struct.ent* @idtoname_update(%struct.ent* %8, %struct.ent* %129)
  store %struct.ent* %130, %struct.ent** %9, align 8
  %131 = load %struct.ent*, %struct.ent** %9, align 8
  %132 = icmp eq %struct.ent* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %138

134:                                              ; preds = %126
  %135 = load %struct.ent*, %struct.ent** %9, align 8
  %136 = getelementptr inbounds %struct.ent, %struct.ent* %135, i32 0, i32 0
  %137 = call i32 @cache_put(%struct.TYPE_2__* %136, i32* @idtoname_cache)
  store i32 0, i32* %13, align 4
  br label %138

138:                                              ; preds = %134, %133, %119, %106, %97, %90, %81, %73, %57, %47
  %139 = load i8*, i8** %10, align 8
  %140 = call i32 @kfree(i8* %139)
  %141 = load i32, i32* %13, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %138, %38, %24
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ent*, i32, i32) #1

declare dso_local i32 @qword_get(i8**, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @get_expiry(i8**) #1

declare dso_local %struct.ent* @idtoname_lookup(%struct.ent*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.ent* @idtoname_update(%struct.ent*, %struct.ent*) #1

declare dso_local i32 @cache_put(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
