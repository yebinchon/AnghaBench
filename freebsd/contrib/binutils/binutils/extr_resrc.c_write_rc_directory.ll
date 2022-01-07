; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_write_rc_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_write_rc_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i64, %struct.TYPE_16__, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"COFF information not part of RC\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Time stamp: %u\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Characteristics: %u\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Version major:%d minor:%d\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"LANGUAGE %u, %u\0A\00", align 1
@SUBLANG_SHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Resource at unexpected level %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*, i32)* @write_rc_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_rc_directory(i32* %0, %struct.TYPE_18__* %1, %struct.TYPE_16__* %2, %struct.TYPE_16__* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %6
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %28, %23, %18, %6
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 (i32*, i8*, ...) @wr_printcomment(i32* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i32*, i8*, ...) @wr_printcomment(i32* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %40, %33
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i32*, i8*, ...) @wr_printcomment(i32* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62, %57
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i32*, i8*, ...) @wr_printcomment(i32* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %71, i64 %74)
  br label %76

76:                                               ; preds = %67, %62
  br label %77

77:                                               ; preds = %76, %28
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  store %struct.TYPE_17__* %80, %struct.TYPE_17__** %13, align 8
  br label %81

81:                                               ; preds = %194, %77
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %83 = icmp ne %struct.TYPE_17__* %82, null
  br i1 %83, label %84, label %198

84:                                               ; preds = %81
  %85 = load i32, i32* %12, align 4
  switch i32 %85, label %153 [
    i32 1, label %86
    i32 2, label %89
    i32 3, label %92
  ]

86:                                               ; preds = %84
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 2
  store %struct.TYPE_16__* %88, %struct.TYPE_16__** %9, align 8
  br label %154

89:                                               ; preds = %84
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  store %struct.TYPE_16__* %91, %struct.TYPE_16__** %10, align 8
  br label %154

92:                                               ; preds = %84
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %152, label %98

98:                                               ; preds = %92
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %104, align 4
  %106 = zext i32 %105 to i64
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %108, label %152

108:                                              ; preds = %98
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = and i64 %113, 65535
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %114, %119
  br i1 %120, label %121, label %152

121:                                              ; preds = %108
  %122 = load i32*, i32** %7, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* @SUBLANG_SHIFT, align 4
  %129 = shl i32 1, %128
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = and i64 %127, %131
  %133 = trunc i64 %132 to i32
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @SUBLANG_SHIFT, align 4
  %140 = zext i32 %139 to i64
  %141 = lshr i64 %138, %140
  %142 = and i64 %141, 255
  %143 = trunc i64 %142 to i32
  %144 = call i32 @wr_print(i32* %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %133, i32 %143)
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = load i32*, i32** %11, align 8
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %121, %108, %98, %92
  br label %154

153:                                              ; preds = %84
  br label %154

154:                                              ; preds = %153, %152, %89, %86
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %154
  %160 = load i32*, i32** %7, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %164 = load i32*, i32** %11, align 8
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @write_rc_subdir(i32* %160, %struct.TYPE_17__* %161, %struct.TYPE_16__* %162, %struct.TYPE_16__* %163, i32* %164, i32 %165)
  br label %193

167:                                              ; preds = %154
  %168 = load i32, i32* %12, align 4
  %169 = icmp eq i32 %168, 3
  br i1 %169, label %170, label %180

170:                                              ; preds = %167
  %171 = load i32*, i32** %7, align 8
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = call i32 @write_rc_resource(i32* %171, %struct.TYPE_16__* %172, %struct.TYPE_16__* %173, i32 %177, i32* %178)
  br label %192

180:                                              ; preds = %167
  %181 = load i32*, i32** %7, align 8
  %182 = load i32, i32* %12, align 4
  %183 = call i32 (i32*, i8*, ...) @wr_printcomment(i32* %181, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %182)
  %184 = load i32*, i32** %7, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32*, i32** %11, align 8
  %191 = call i32 @write_rc_resource(i32* %184, %struct.TYPE_16__* %185, %struct.TYPE_16__* null, i32 %189, i32* %190)
  br label %192

192:                                              ; preds = %180, %170
  br label %193

193:                                              ; preds = %192, %159
  br label %194

194:                                              ; preds = %193
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 3
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %196, align 8
  store %struct.TYPE_17__* %197, %struct.TYPE_17__** %13, align 8
  br label %81

198:                                              ; preds = %81
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 4
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %200, align 8
  %202 = icmp eq %struct.TYPE_17__* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load i32*, i32** %7, align 8
  %205 = call i32 @wr_print_flush(i32* %204)
  br label %206

206:                                              ; preds = %203, %198
  ret void
}

declare dso_local i32 @wr_printcomment(i32*, i8*, ...) #1

declare dso_local i32 @wr_print(i32*, i8*, i32, i32) #1

declare dso_local i32 @write_rc_subdir(i32*, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @write_rc_resource(i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @wr_print_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
