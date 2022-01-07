; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_vdev.c_check_replication.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_vdev.c_check_replication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }

@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"mismatched replication level: pool uses %s and new vdev is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"mismatched replication level: pool uses %llu device parity and new vdev uses %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"mismatched replication level: pool uses %llu-way %s and new vdev uses %llu-way %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @check_replication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_replication(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %17 = call i64 @nvlist_lookup_nvlist(i32* %15, i32 %16, i32** %11)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @verify(i32 %19)
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* @B_FALSE, align 4
  %23 = call %struct.TYPE_4__* @get_replication(i32* %21, i32 %22)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %8, align 8
  %24 = icmp eq %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %131

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %30 = call i64 @nvlist_lookup_nvlist_array(i32* %28, i32 %29, i32*** %6, i64* %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %27
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = call i32 @free(%struct.TYPE_4__* %36)
  store i32 0, i32* %3, align 4
  br label %131

38:                                               ; preds = %32
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @num_logs(i32* %39)
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = call i32 @free(%struct.TYPE_4__* %44)
  store i32 0, i32* %3, align 4
  br label %131

46:                                               ; preds = %38
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @B_TRUE, align 4
  %49 = call %struct.TYPE_4__* @get_replication(i32* %47, i32 %48)
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %9, align 8
  %50 = icmp eq %struct.TYPE_4__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = call i32 @free(%struct.TYPE_4__* %52)
  store i32 -1, i32* %3, align 4
  br label %131

54:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %121

57:                                               ; preds = %54
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @strcmp(i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %57
  %67 = call i32 @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = call i32 (i32, i64, i64, ...) @vdev_error(i32 %67, i64 %71, i64 %75)
  store i32 -1, i32* %10, align 4
  br label %120

77:                                               ; preds = %57
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = call i32 @gettext(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (i32, i64, i64, ...) @vdev_error(i32 %86, i64 %89, i64 %92)
  store i32 -1, i32* %10, align 4
  br label %119

94:                                               ; preds = %77
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %94
  %103 = call i32 @gettext(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0))
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i32, i64, i64, ...) @vdev_error(i32 %103, i64 %106, i64 %110, i64 %113, i32 %116)
  store i32 -1, i32* %10, align 4
  br label %118

118:                                              ; preds = %102, %94
  br label %119

119:                                              ; preds = %118, %85
  br label %120

120:                                              ; preds = %119, %66
  br label %121

121:                                              ; preds = %120, %54
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %123 = call i32 @free(%struct.TYPE_4__* %122)
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %125 = icmp ne %struct.TYPE_4__* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %128 = call i32 @free(%struct.TYPE_4__* %127)
  br label %129

129:                                              ; preds = %126, %121
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %51, %43, %35, %25
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local %struct.TYPE_4__* @get_replication(i32*, i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i64 @num_logs(i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @vdev_error(i32, i64, i64, ...) #1

declare dso_local i32 @gettext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
