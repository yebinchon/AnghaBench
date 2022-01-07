; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_dof.c_dof_add_translator.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_dof.c_dof_add_translator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_16__*, i64*, i64*, i32* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__, i32, i32, i32, i32, i32*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i32, i8*, i64 }
%struct.TYPE_22__ = type { i32, i32, i8*, i8*, i32, i64 }

@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@DOF_SECT_XLIMPORT = common dso_local global i64 0, align 8
@DOF_SECT_XLEXPORT = common dso_local global i64 0, align 8
@DOF_SECIDX_NONE = common dso_local global i64 0, align 8
@DOF_SECT_XLMEMBERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_18__*, i64)* @dof_add_translator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dof_add_translator(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_21__, align 8
  %9 = alloca %struct.TYPE_22__, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 6
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  store i64 0, i64* %14, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @DOF_SECT_XLIMPORT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @DOF_SECT_XLEXPORT, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %26, %3
  %31 = phi i1 [ true, %3 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @DOF_SECT_XLIMPORT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 5
  %40 = load i64*, i64** %39, align 8
  br label %45

41:                                               ; preds = %30
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 4
  %44 = load i64*, i64** %43, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i64* [ %40, %37 ], [ %44, %41 ]
  store i64* %46, i64** %10, align 8
  %47 = load i64*, i64** %10, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DOF_SECIDX_NONE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i32 1, i32* %15, align 4
  br label %176

56:                                               ; preds = %45
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = call i32 @dt_buf_reset(i32* %57, i32* %59)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 7
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  store %struct.TYPE_19__* %63, %struct.TYPE_19__** %13, align 8
  br label %64

64:                                               ; preds = %116, %56
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %66 = icmp ne %struct.TYPE_19__* %65, null
  br i1 %66, label %67, label %122

67:                                               ; preds = %64
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @DOF_SECT_XLIMPORT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %14, align 8
  %83 = call i32 @BT_TEST(i32 %81, i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %71
  br label %116

86:                                               ; preds = %71
  %87 = load i64, i64* @DOF_SECIDX_NONE, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 2
  store i64 %87, i64* %88, align 8
  br label %101

89:                                               ; preds = %67
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 6
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @dof_add_difo(%struct.TYPE_20__* %90, i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 2
  store i64 %99, i64* %100, align 8
  br label %101

101:                                              ; preds = %89, %86
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i8* @dof_add_string(%struct.TYPE_20__* %102, i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  store i8* %106, i8** %107, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %111 = call i32 @dt_node_diftype(i32* %108, %struct.TYPE_19__* %109, i32* %110)
  %112 = load i32*, i32** %7, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 1
  %115 = call i32 @dt_buf_write(i32* %112, i32* %114, %struct.TYPE_21__* %8, i32 24, i32 4)
  br label %116

116:                                              ; preds = %101, %85
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %118, align 8
  store %struct.TYPE_19__* %119, %struct.TYPE_19__** %13, align 8
  %120 = load i64, i64* %14, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %14, align 8
  br label %64

122:                                              ; preds = %64
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %124 = load i64, i64* @DOF_SECT_XLMEMBERS, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = call i32 @dt_buf_len(i32* %126)
  %128 = call i64 @dof_add_lsect(%struct.TYPE_20__* %123, %struct.TYPE_22__* null, i64 %124, i32 4, i32 0, i32 24, i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 5
  store i64 %128, i64* %129, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 1
  %135 = call i32 @dt_buf_concat(i32* %130, i32* %132, i32* %134, i32 4)
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 4
  store i32 %138, i32* %139, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = trunc i64 %20 to i32
  %148 = call i32 @ctf_type_name(i32 %143, i32 %146, i8* %22, i32 %147)
  %149 = call i8* @dof_add_string(%struct.TYPE_20__* %140, i32 %148)
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 3
  store i8* %149, i8** %150, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i32 1, i32* %151, align 8
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = trunc i64 %20 to i32
  %160 = call i32 @ctf_type_name(i32 %155, i32 %158, i8* %22, i32 %159)
  %161 = call i8* @dof_add_string(%struct.TYPE_20__* %152, i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  store i8* %161, i8** %162, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = call i32 @dof_attr(i32* %165)
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  store i32 %166, i32* %167, align 4
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %169 = load i64, i64* %6, align 8
  %170 = call i64 @dof_add_lsect(%struct.TYPE_20__* %168, %struct.TYPE_22__* %9, i64 %169, i32 4, i32 0, i32 0, i32 40)
  %171 = load i64*, i64** %10, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i64, i64* %171, i64 %174
  store i64 %170, i64* %175, align 8
  store i32 0, i32* %15, align 4
  br label %176

176:                                              ; preds = %122, %55
  %177 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load i32, i32* %15, align 4
  switch i32 %178, label %180 [
    i32 0, label %179
    i32 1, label %179
  ]

179:                                              ; preds = %176, %176
  ret void

180:                                              ; preds = %176
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @dt_buf_reset(i32*, i32*) #2

declare dso_local i32 @BT_TEST(i32, i64) #2

declare dso_local i64 @dof_add_difo(%struct.TYPE_20__*, i32) #2

declare dso_local i8* @dof_add_string(%struct.TYPE_20__*, i32) #2

declare dso_local i32 @dt_node_diftype(i32*, %struct.TYPE_19__*, i32*) #2

declare dso_local i32 @dt_buf_write(i32*, i32*, %struct.TYPE_21__*, i32, i32) #2

declare dso_local i64 @dof_add_lsect(%struct.TYPE_20__*, %struct.TYPE_22__*, i64, i32, i32, i32, i32) #2

declare dso_local i32 @dt_buf_len(i32*) #2

declare dso_local i32 @dt_buf_concat(i32*, i32*, i32*, i32) #2

declare dso_local i32 @ctf_type_name(i32, i32, i8*, i32) #2

declare dso_local i32 @dof_attr(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
