; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_fru.c_libzfs_fru_gather.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_fru.c_libzfs_fru_gather.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_8__*, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32* }

@.str = private unnamed_addr constant [8 x i8] c"chassis\00", align 1
@FM_FMRI_AUTHORITY = common dso_local global i8* null, align 8
@FM_FMRI_AUTH_CHASSIS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"disk\00", align 1
@TOPO_WALK_NEXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"devfs-path\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @libzfs_fru_gather to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libzfs_fru_gather(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %8, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @_topo_node_name(i32* %25)
  %27 = call i64 @strcmp(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i32*, i32** %6, align 8
  %31 = load i8*, i8** @FM_FMRI_AUTHORITY, align 8
  %32 = load i8*, i8** @FM_FMRI_AUTH_CHASSIS, align 8
  %33 = call i64 @_topo_prop_get_string(i32* %30, i8* %31, i8* %32, i8** %10, i32* %12)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @strlcpy(i8* %38, i8* %39, i32 8)
  br label %41

41:                                               ; preds = %35, %29
  br label %42

42:                                               ; preds = %41, %24, %3
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @_topo_node_name(i32* %43)
  %45 = call i64 @strcmp(i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @TOPO_WALK_NEXT, align 4
  store i32 %48, i32* %4, align 4
  br label %161

49:                                               ; preds = %42
  %50 = load i32*, i32** %6, align 8
  %51 = call i64 @_topo_prop_get_string(i32* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %10, i32* %12)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @TOPO_WALK_NEXT, align 4
  store i32 %54, i32* %4, align 4
  br label %161

55:                                               ; preds = %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call i32* @libzfs_fru_lookup(%struct.TYPE_7__* %56, i8* %57)
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32*, i32** %5, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @_topo_hdl_strfree(i32* %61, i8* %62)
  %64 = load i32, i32* @TOPO_WALK_NEXT, align 4
  store i32 %64, i32* %4, align 4
  br label %161

65:                                               ; preds = %55
  %66 = load i32*, i32** %6, align 8
  %67 = call i64 @_topo_node_fru(i32* %66, i32** %9, i32* null, i32* %12)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32*, i32** %5, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @_topo_hdl_strfree(i32* %70, i8* %71)
  %73 = load i32, i32* @TOPO_WALK_NEXT, align 4
  store i32 %73, i32* %4, align 4
  br label %161

74:                                               ; preds = %65
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i64 @_topo_fmri_nvl2str(i32* %75, i32* %76, i8** %11, i32* %12)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @nvlist_free(i32* %80)
  %82 = load i32*, i32** %5, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @_topo_hdl_strfree(i32* %82, i8* %83)
  %85 = load i32, i32* @TOPO_WALK_NEXT, align 4
  store i32 %85, i32* %4, align 4
  br label %161

86:                                               ; preds = %74
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @nvlist_free(i32* %87)
  %89 = call %struct.TYPE_8__* @calloc(i32 32, i32 1)
  store %struct.TYPE_8__* %89, %struct.TYPE_8__** %13, align 8
  %90 = icmp eq %struct.TYPE_8__* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load i32*, i32** %5, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @_topo_hdl_strfree(i32* %92, i8* %93)
  %95 = load i32*, i32** %5, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @_topo_hdl_strfree(i32* %95, i8* %96)
  %98 = load i32, i32* @TOPO_WALK_NEXT, align 4
  store i32 %98, i32* %4, align 4
  br label %161

99:                                               ; preds = %86
  %100 = load i8*, i8** %10, align 8
  %101 = call i8* @strdup(i8* %100)
  %102 = bitcast i8* %101 to %struct.TYPE_8__*
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %104, align 8
  %105 = icmp eq %struct.TYPE_8__* %102, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %99
  %107 = load i8*, i8** %11, align 8
  %108 = call i8* @strdup(i8* %107)
  %109 = bitcast i8* %108 to i32*
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  store i32* %109, i32** %111, align 8
  %112 = icmp eq i32* %109, null
  br i1 %112, label %113, label %127

113:                                              ; preds = %106, %99
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = call i32 @free(%struct.TYPE_8__* %116)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %119 = call i32 @free(%struct.TYPE_8__* %118)
  %120 = load i32*, i32** %5, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 @_topo_hdl_strfree(i32* %120, i8* %121)
  %123 = load i32*, i32** %5, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 @_topo_hdl_strfree(i32* %123, i8* %124)
  %126 = load i32, i32* @TOPO_WALK_NEXT, align 4
  store i32 %126, i32* %4, align 4
  br label %161

127:                                              ; preds = %106
  %128 = load i32*, i32** %5, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = call i32 @_topo_hdl_strfree(i32* %128, i8* %129)
  %131 = load i32*, i32** %5, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = call i32 @_topo_hdl_strfree(i32* %131, i8* %132)
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = call i64 @fru_strhash(%struct.TYPE_8__* %136)
  store i64 %137, i64* %14, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %139, align 8
  %141 = load i64, i64* %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %140, i64 %141
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  store %struct.TYPE_8__* %143, %struct.TYPE_8__** %145, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %148, align 8
  %150 = load i64, i64* %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %149, i64 %150
  store %struct.TYPE_8__* %146, %struct.TYPE_8__** %151, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store %struct.TYPE_8__* %154, %struct.TYPE_8__** %156, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  store %struct.TYPE_8__* %157, %struct.TYPE_8__** %159, align 8
  %160 = load i32, i32* @TOPO_WALK_NEXT, align 4
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %127, %113, %91, %79, %69, %60, %53, %47
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @_topo_node_name(i32*) #1

declare dso_local i64 @_topo_prop_get_string(i32*, i8*, i8*, i8**, i32*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32* @libzfs_fru_lookup(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @_topo_hdl_strfree(i32*, i8*) #1

declare dso_local i64 @_topo_node_fru(i32*, i32**, i32*, i32*) #1

declare dso_local i64 @_topo_fmri_nvl2str(i32*, i32*, i8**, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i64 @fru_strhash(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
