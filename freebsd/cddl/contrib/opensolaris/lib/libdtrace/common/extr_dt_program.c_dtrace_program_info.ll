; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_program.c_dtrace_program_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_program.c_dtrace_program_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_16__*, i64, %struct.TYPE_20__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i32, i32, i8*, i8* }

@_dtrace_maxattr = common dso_local global i8* null, align 8
@_dtrace_defattr = common dso_local global i8* null, align 8
@DTRACEACT_SPECULATE = common dso_local global i64 0, align 8
@DTRACEACT_DIFEXPR = common dso_local global i64 0, align 8
@DIF_TYPE_CTF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_program_info(i32* %0, %struct.TYPE_18__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %9, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %12 = icmp eq %struct.TYPE_17__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %165

14:                                               ; preds = %3
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = call i32 @bzero(%struct.TYPE_17__* %15, i32 32)
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = call %struct.TYPE_21__* @dt_list_next(%struct.TYPE_21__* %18)
  %20 = icmp ne %struct.TYPE_21__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load i8*, i8** @_dtrace_maxattr, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @_dtrace_maxattr, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  br label %35

28:                                               ; preds = %14
  %29 = load i8*, i8** @_dtrace_defattr, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @_dtrace_defattr, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %28, %21
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = call %struct.TYPE_21__* @dt_list_next(%struct.TYPE_21__* %37)
  store %struct.TYPE_21__* %38, %struct.TYPE_21__** %7, align 8
  br label %39

39:                                               ; preds = %162, %35
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %41 = icmp ne %struct.TYPE_21__* %40, null
  br i1 %41, label %42, label %165

42:                                               ; preds = %39
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  store %struct.TYPE_19__* %47, %struct.TYPE_19__** %10, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %50 = icmp eq %struct.TYPE_19__* %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %162

52:                                               ; preds = %42
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %9, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @dt_attr_min(i32 %58, i8* %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @dt_attr_min(i32 %69, i8* %72)
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %77, align 8
  %79 = icmp eq %struct.TYPE_20__* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %52
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %80, %52
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  store %struct.TYPE_20__* %88, %struct.TYPE_20__** %8, align 8
  br label %89

89:                                               ; preds = %157, %85
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %91 = icmp ne %struct.TYPE_20__* %90, null
  br i1 %91, label %92, label %161

92:                                               ; preds = %89
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DTRACEACT_SPECULATE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %157

103:                                              ; preds = %92
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @DTRACEACT_ISAGG(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %103
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %115, %112
  store i64 %116, i64* %114, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  br label %157

121:                                              ; preds = %103
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @DTRACEACT_ISDESTRUCTIVE(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %157

128:                                              ; preds = %121
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @DTRACEACT_DIFEXPR, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %152

134:                                              ; preds = %128
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @DIF_TYPE_CTF, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %134
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  br label %157

152:                                              ; preds = %143, %134, %128
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %155, 1
  store i64 %156, i64* %154, align 8
  br label %157

157:                                              ; preds = %152, %151, %127, %109, %98
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %159, align 8
  store %struct.TYPE_20__* %160, %struct.TYPE_20__** %8, align 8
  br label %89

161:                                              ; preds = %89
  br label %162

162:                                              ; preds = %161, %51
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %164 = call %struct.TYPE_21__* @dt_list_next(%struct.TYPE_21__* %163)
  store %struct.TYPE_21__* %164, %struct.TYPE_21__** %7, align 8
  br label %39

165:                                              ; preds = %13, %39
  ret void
}

declare dso_local i32 @bzero(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_21__* @dt_list_next(%struct.TYPE_21__*) #1

declare dso_local i8* @dt_attr_min(i32, i8*) #1

declare dso_local i64 @DTRACEACT_ISAGG(i64) #1

declare dso_local i64 @DTRACEACT_ISDESTRUCTIVE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
