; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_import.c_fix_paths.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_import.c_fix_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, %struct.TYPE_3__* }

@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_DEVID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @fix_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fix_paths(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %20 = call i64 @nvlist_lookup_nvlist_array(i32* %18, i32 %19, i32*** %6, i64* %8)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %37, %22
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i32**, i32*** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = call i32 @fix_paths(i32* %31, %struct.TYPE_3__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %167

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  br label %23

40:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %167

41:                                               ; preds = %2
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %44 = call i64 @nvlist_lookup_uint64(i32* %42, i32 %43, i64* %9)
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @verify(i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %50 = call i64 @nvlist_lookup_string(i32* %48, i32 %49, i8** %12)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i8* null, i8** %12, align 8
  br label %53

53:                                               ; preds = %52, %41
  store i32 0, i32* %14, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %11, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %54, %struct.TYPE_3__** %10, align 8
  br label %55

55:                                               ; preds = %127, %53
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %57 = icmp ne %struct.TYPE_3__* %56, null
  br i1 %57, label %58, label %131

58:                                               ; preds = %55
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %126

64:                                               ; preds = %58
  %65 = load i8*, i8** %12, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %68, %struct.TYPE_3__** %11, align 8
  br label %131

69:                                               ; preds = %64
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %72, i64 %77
  %79 = getelementptr inbounds i8, i8* %78, i64 -1
  store i8* %79, i8** %15, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = getelementptr inbounds i8, i8* %84, i64 -1
  store i8* %85, i8** %16, align 8
  store i32 0, i32* %17, align 4
  br label %86

86:                                               ; preds = %108, %69
  %87 = load i8*, i8** %15, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = icmp uge i8* %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i8*, i8** %16, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = icmp uge i8* %93, %94
  br label %96

96:                                               ; preds = %92, %86
  %97 = phi i1 [ false, %86 ], [ %95, %92 ]
  br i1 %97, label %98, label %115

98:                                               ; preds = %96
  %99 = load i8*, i8** %15, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = load i8*, i8** %16, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %115

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107
  %109 = load i8*, i8** %15, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 -1
  store i8* %110, i8** %15, align 8
  %111 = load i8*, i8** %16, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 -1
  store i8* %112, i8** %16, align 8
  %113 = load i32, i32* %17, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %17, align 4
  br label %86

115:                                              ; preds = %106, %96
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %121 = icmp eq %struct.TYPE_3__* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119, %115
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %123, %struct.TYPE_3__** %11, align 8
  %124 = load i32, i32* %17, align 4
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125, %58
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  store %struct.TYPE_3__* %130, %struct.TYPE_3__** %10, align 8
  br label %55

131:                                              ; preds = %67, %55
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %133 = icmp eq %struct.TYPE_3__* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %167

135:                                              ; preds = %131
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @nvlist_add_string(i32* %136, i32 %137, i8* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  store i32 -1, i32* %3, align 4
  br label %167

144:                                              ; preds = %135
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = call i8* @get_devid(i8* %147)
  store i8* %148, i8** %13, align 8
  %149 = icmp eq i8* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load i32*, i32** %4, align 8
  %152 = load i32, i32* @ZPOOL_CONFIG_DEVID, align 4
  %153 = call i32 @nvlist_remove_all(i32* %151, i32 %152)
  br label %166

154:                                              ; preds = %144
  %155 = load i32*, i32** %4, align 8
  %156 = load i32, i32* @ZPOOL_CONFIG_DEVID, align 4
  %157 = load i8*, i8** %13, align 8
  %158 = call i64 @nvlist_add_string(i32* %155, i32 %156, i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load i8*, i8** %13, align 8
  %162 = call i32 @devid_str_free(i8* %161)
  store i32 -1, i32* %3, align 4
  br label %167

163:                                              ; preds = %154
  %164 = load i8*, i8** %13, align 8
  %165 = call i32 @devid_str_free(i8* %164)
  br label %166

166:                                              ; preds = %163, %150
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %160, %143, %134, %40, %35
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i8* @get_devid(i8*) #1

declare dso_local i32 @nvlist_remove_all(i32*, i32) #1

declare dso_local i32 @devid_str_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
