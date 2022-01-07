; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_as.c_dt_as_xlate.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_as.c_dt_as_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32**, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_16__**, i32* }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64 }

@DT_NODE_MEMBER = common dso_local global i64 0, align 8
@DT_NODE_XLATOR = common dso_local global i64 0, align 8
@EDT_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_13__*, i64, i64, %struct.TYPE_16__*)* @dt_as_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_as_xlate(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, i64 %2, i64 %3, %struct.TYPE_16__* %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %10, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %11, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %12, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DT_NODE_MEMBER, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DT_NODE_XLATOR, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32**, i32*** %70, align 8
  %72 = icmp eq i32** %71, null
  br i1 %72, label %73, label %101

73:                                               ; preds = %5
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = mul i64 8, %83
  %85 = trunc i64 %84 to i32
  %86 = call i8* @dt_zalloc(%struct.TYPE_12__* %79, i32 %85)
  %87 = bitcast i8* %86 to i32**
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  store i32** %87, i32*** %89, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i32**, i32*** %91, align 8
  %93 = icmp eq i32** %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %73
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @EDT_NOMEM, align 4
  %99 = call i32 @longjmp(i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %73
  br label %101

101:                                              ; preds = %100, %5
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i32**, i32*** %103, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %104, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %145

112:                                              ; preds = %101
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @BT_SIZEOFMAP(i64 %116)
  %118 = call i8* @dt_zalloc(%struct.TYPE_12__* %113, i32 %117)
  %119 = bitcast i8* %118 to i32*
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load i32**, i32*** %121, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %122, i64 %126
  store i32* %119, i32** %127, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load i32**, i32*** %129, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %130, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %112
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @EDT_NOMEM, align 4
  %143 = call i32 @longjmp(i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %138, %112
  br label %145

145:                                              ; preds = %144, %101
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* %8, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @DIF_INSTR_OP(i32 %151)
  %153 = load i64, i64* %9, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* %8, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @DIF_INSTR_RD(i32 %159)
  %161 = call i32 @DIF_INSTR_XLATE(i32 %152, i64 %153, i32 %160)
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* %8, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32 %161, i32* %166, align 4
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load i32**, i32*** %168, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %169, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @BT_SET(i32* %175, i64 %178)
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %182, align 8
  %184 = load i64, i64* %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %183, i64 %184
  store %struct.TYPE_16__* %180, %struct.TYPE_16__** %185, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @dt_zalloc(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @BT_SIZEOFMAP(i64) #1

declare dso_local i32 @DIF_INSTR_XLATE(i32, i64, i32) #1

declare dso_local i32 @DIF_INSTR_OP(i32) #1

declare dso_local i32 @DIF_INSTR_RD(i32) #1

declare dso_local i32 @BT_SET(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
