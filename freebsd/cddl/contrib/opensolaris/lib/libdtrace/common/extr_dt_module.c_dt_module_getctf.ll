; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dt_module_getctf.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dt_module_getctf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32*, i32, i32, i32, %struct.TYPE_13__, i32* }
%struct.TYPE_13__ = type { i64 }

@dt_modops_64 = common dso_local global i32 0, align 4
@CTF_MODEL_LP64 = common dso_local global i32 0, align 4
@CTF_MODEL_ILP32 = common dso_local global i32 0, align 4
@EDT_DATAMODEL = common dso_local global i32 0, align 4
@EDT_NOCTF = common dso_local global i32 0, align 4
@EDT_CTF = common dso_local global i32 0, align 4
@EDT_NOMEM = common dso_local global i32 0, align 4
@CTF_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"loaded CTF container for %s (%p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @dt_module_getctf(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = call i64 @dt_module_load(%struct.TYPE_15__* %15, %struct.TYPE_16__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14, %2
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %3, align 8
  br label %145

23:                                               ; preds = %14
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, @dt_modops_64
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @CTF_MODEL_LP64, align 4
  store i32 %29, i32* %9, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @CTF_MODEL_ILP32, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = load i32, i32* @EDT_DATAMODEL, align 4
  %42 = call i32 @dt_set_errno(%struct.TYPE_15__* %40, i32 %41)
  store i32* null, i32** %3, align 8
  br label %145

43:                                               ; preds = %32
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = load i32, i32* @EDT_NOCTF, align 4
  %52 = call i32 @dt_set_errno(%struct.TYPE_15__* %50, i32 %51)
  store i32* null, i32** %3, align 8
  br label %145

53:                                               ; preds = %43
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = call i32* @ctf_bufopen(%struct.TYPE_13__* %55, i32* %57, i32* %59, i32* %61)
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %53
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = load i32, i32* @EDT_CTF, align 4
  %72 = call i32 @dt_set_errno(%struct.TYPE_15__* %70, i32 %71)
  store i32* null, i32** %3, align 8
  br label %145

73:                                               ; preds = %53
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @ctf_setmodel(i32* %76, i32 %77)
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = call i32 @ctf_setspecific(i32* %81, %struct.TYPE_16__* %82)
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i8* @ctf_parent_name(i32* %86)
  store i8* %87, i8** %6, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %126

89:                                               ; preds = %73
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call %struct.TYPE_16__* @dt_module_create(%struct.TYPE_15__* %90, i8* %91)
  store %struct.TYPE_16__* %92, %struct.TYPE_16__** %7, align 8
  %93 = icmp eq %struct.TYPE_16__* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %97 = call i32* @dt_module_getctf(%struct.TYPE_15__* %95, %struct.TYPE_16__* %96)
  store i32* %97, i32** %8, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %94, %89
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %101 = icmp eq %struct.TYPE_16__* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %104 = load i32, i32* @EDT_NOMEM, align 4
  %105 = call i32 @dt_set_errno(%struct.TYPE_15__* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %99
  br label %138

107:                                              ; preds = %94
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = call i64 @ctf_import(i32* %110, i32* %111)
  %113 = load i64, i64* @CTF_ERR, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %107
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @ctf_errno(i32* %118)
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %123 = load i32, i32* @EDT_CTF, align 4
  %124 = call i32 @dt_set_errno(%struct.TYPE_15__* %122, i32 %123)
  br label %138

125:                                              ; preds = %107
  br label %126

126:                                              ; preds = %125, %73
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = bitcast i32* %132 to i8*
  %134 = call i32 @dt_dprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %129, i8* %133)
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  store i32* %137, i32** %3, align 8
  br label %145

138:                                              ; preds = %115, %106
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @ctf_close(i32* %141)
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  store i32* null, i32** %144, align 8
  store i32* null, i32** %3, align 8
  br label %145

145:                                              ; preds = %138, %126, %69, %49, %39, %19
  %146 = load i32*, i32** %3, align 8
  ret i32* %146
}

declare dso_local i64 @dt_module_load(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @ctf_bufopen(%struct.TYPE_13__*, i32*, i32*, i32*) #1

declare dso_local i32 @ctf_setmodel(i32*, i32) #1

declare dso_local i32 @ctf_setspecific(i32*, %struct.TYPE_16__*) #1

declare dso_local i8* @ctf_parent_name(i32*) #1

declare dso_local %struct.TYPE_16__* @dt_module_create(%struct.TYPE_15__*, i8*) #1

declare dso_local i64 @ctf_import(i32*, i32*) #1

declare dso_local i32 @ctf_errno(i32*) #1

declare dso_local i32 @dt_dprintf(i8*, i32, i8*) #1

declare dso_local i32 @ctf_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
