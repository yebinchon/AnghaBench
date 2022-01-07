; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dt_module_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dt_module_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i64, i32*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__, i32, %struct.TYPE_13__**, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@CTF_MODEL_LP64 = common dso_local global i64 0, align 8
@dt_modops_64 = common dso_local global i32 0, align 4
@dt_modops_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"encountered malformed pid module: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @dt_module_create(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @dt_strtab_hash(i8* %11, i32* null)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = urem i64 %12, %15
  store i64 %16, i64* %9, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %18, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %19, i64 %20
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %10, align 8
  br label %23

23:                                               ; preds = %36, %2
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %25 = icmp ne %struct.TYPE_13__* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strcmp(i8* %29, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %3, align 8
  br label %145

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %10, align 8
  br label %23

40:                                               ; preds = %23
  %41 = call %struct.TYPE_13__* @malloc(i32 32)
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %10, align 8
  %42 = icmp eq %struct.TYPE_13__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %145

44:                                               ; preds = %40
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %46 = call i32 @bzero(%struct.TYPE_13__* %45, i32 32)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @strlcpy(i8* %49, i8* %50, i32 8)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %55 = call i32 @dt_list_append(i32* %53, %struct.TYPE_13__* %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %58, i64 %59
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %67, i64 %68
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %69, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CTF_MODEL_LP64, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %44
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  store i32* @dt_modops_64, i32** %82, align 8
  br label %86

83:                                               ; preds = %44
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  store i32* @dt_modops_32, i32** %85, align 8
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @strncmp(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %143

92:                                               ; preds = %86
  store i64 0, i64* @errno, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %92
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call %struct.TYPE_14__* @dt_idhash_lookup(i32 %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_14__* %104, %struct.TYPE_14__** %8, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %106 = icmp ne %struct.TYPE_14__* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %100
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %112, %107, %100
  br label %142

119:                                              ; preds = %92
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 3
  %124 = call i64 @strtol(i8* %123, i8** %7, i32 10)
  store i64 %124, i64* %6, align 8
  %125 = load i64, i64* @errno, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %119
  %128 = load i8*, i8** %7, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i64, i64* %6, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  br label %141

136:                                              ; preds = %127, %119
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @dt_dprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %136, %132
  br label %142

142:                                              ; preds = %141, %118
  br label %143

143:                                              ; preds = %142, %86
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %144, %struct.TYPE_13__** %3, align 8
  br label %145

145:                                              ; preds = %143, %43, %33
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %146
}

declare dso_local i64 @dt_strtab_hash(i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_13__* @malloc(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @dt_list_append(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_14__* @dt_idhash_lookup(i32, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @dt_dprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
