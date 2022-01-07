; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_find_zpool.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_find_zpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8**, i32 }

@B_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"/@\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"\09Matched %d pools - use pool GUID instead of pool name or \0A\09pool name part of a dataset name to select pool\00", align 1
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i32**, i32, i8**)* @find_zpool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_zpool(i8** %0, i32** %1, i32 %2, i8** %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  store i32* null, i32** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8 0, i8* %13, align 1
  store i32 0, i32* %14, align 4
  %18 = call i32 @bzero(%struct.TYPE_4__* %15, i32 24)
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i8**, i8*** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i8** %21, i8*** %22, align 8
  %23 = load i32, i32* @B_TRUE, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @strpbrk(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load i8*, i8** %12, align 8
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %13, align 1
  %32 = load i8*, i8** %12, align 8
  store i8 0, i8* %32, align 1
  br label %33

33:                                               ; preds = %29, %4
  %34 = load i32, i32* @g_zfs, align 4
  %35 = call i32* @zpool_search_import(i32 %34, %struct.TYPE_4__* %15)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %85

38:                                               ; preds = %33
  store i32* null, i32** %16, align 8
  br label %39

39:                                               ; preds = %83, %38
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %16, align 8
  %42 = call i32* @nvlist_next_nvpair(i32* %40, i32* %41)
  store i32* %42, i32** %16, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %84

44:                                               ; preds = %39
  %45 = load i32*, i32** %16, align 8
  %46 = load i32**, i32*** %6, align 8
  %47 = call i64 @nvpair_value_nvlist(i32* %45, i32** %46)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @verify(i32 %49)
  %51 = load i32**, i32*** %6, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = load i8**, i8*** %5, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @pool_match(i32* %52, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %44
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %14, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load i8*, i8** %11, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @dump_nvlist(i32* %68, i32 8)
  store i8* null, i8** %11, align 8
  br label %70

70:                                               ; preds = %65, %62
  %71 = load i32*, i32** %16, align 8
  %72 = call i8* @nvpair_name(i32* %71)
  %73 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = load i32**, i32*** %6, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @dump_nvlist(i32* %75, i32 8)
  br label %82

77:                                               ; preds = %57
  %78 = load i32**, i32*** %6, align 8
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = call i8* @nvpair_name(i32* %80)
  store i8* %81, i8** %11, align 8
  br label %82

82:                                               ; preds = %77, %70
  br label %83

83:                                               ; preds = %82, %44
  br label %39

84:                                               ; preds = %39
  br label %85

85:                                               ; preds = %84, %33
  %86 = load i32, i32* %14, align 4
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @fatal(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i8*, i8** %12, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i8, i8* %13, align 1
  %96 = load i8*, i8** %12, align 8
  store i8 %95, i8* %96, align 1
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i8*, i8** %11, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %137

100:                                              ; preds = %97
  %101 = load i8**, i8*** %5, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = call i8* @strstr(i8* %102, i8* %103)
  %105 = load i8**, i8*** %5, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %104, %106
  br i1 %107, label %108, label %137

108:                                              ; preds = %100
  %109 = load i8*, i8** %11, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = add nsw i32 1, %110
  %112 = load i8*, i8** %12, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i8*, i8** %12, align 8
  %116 = call i32 @strlen(i8* %115)
  br label %118

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117, %114
  %119 = phi i32 [ %116, %114 ], [ 0, %117 ]
  %120 = add nsw i32 %111, %119
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* @UMEM_NOFAIL, align 4
  %123 = call i8* @umem_alloc(i32 %121, i32 %122)
  %124 = load i8**, i8*** %5, align 8
  store i8* %123, i8** %124, align 8
  %125 = load i8**, i8*** %5, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* %17, align 4
  %128 = load i8*, i8** %11, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %118
  %132 = load i8*, i8** %12, align 8
  br label %134

133:                                              ; preds = %118
  br label %134

134:                                              ; preds = %133, %131
  %135 = phi i8* [ %132, %131 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %133 ]
  %136 = call i32 @snprintf(i8* %126, i32 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %128, i8* %135)
  br label %137

137:                                              ; preds = %134, %100, %97
  %138 = load i8*, i8** %11, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i32*, i32** %10, align 8
  br label %143

142:                                              ; preds = %137
  br label %143

143:                                              ; preds = %142, %140
  %144 = phi i32* [ %141, %140 ], [ null, %142 ]
  %145 = load i32**, i32*** %6, align 8
  store i32* %144, i32** %145, align 8
  %146 = load i8*, i8** %11, align 8
  ret i8* %146
}

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32* @zpool_search_import(i32, %struct.TYPE_4__*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i64 @pool_match(i32*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @dump_nvlist(i32*, i32) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @umem_alloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
