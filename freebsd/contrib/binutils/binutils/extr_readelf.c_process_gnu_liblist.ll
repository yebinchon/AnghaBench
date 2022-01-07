; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_gnu_liblist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_gnu_liblist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i8*, i8*, i8* }
%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@do_arch = common dso_local global i32 0, align 4
@section_headers = common dso_local global %struct.TYPE_9__* null, align 8
@elf_header = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"liblist\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"liblist string table\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"\0ALibrary list section '%s' contains %lu entries:\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"     Library              Time Stamp          Checksum   Version Flags\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%04u-%02u-%02uT%02u:%02u:%02u\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%3lu: \00", align 1
@do_wide = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%-20s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"<corrupt>\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%-20.20s\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c" %s %#010lx %-7ld %-7ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @process_gnu_liblist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_gnu_liblist(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [20 x i8], align 16
  %14 = alloca %struct.tm*, align 8
  store i32* %0, i32** %3, align 8
  %15 = load i32, i32* @do_arch, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %208

18:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @section_headers, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %4, align 8
  br label %20

20:                                               ; preds = %202, %18
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @elf_header, i32 0, i32 0), align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %207

24:                                               ; preds = %20
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %201 [
    i32 128, label %28
  ]

28:                                               ; preds = %24
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @SECTION_HEADER_INDEX(i32 %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @elf_header, i32 0, i32 0), align 4
  %34 = icmp uge i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %201

36:                                               ; preds = %28
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %45 = call i8* @get_data(i32* null, i32* %37, i32 %40, i32 1, i64 %43, i8* %44)
  %46 = bitcast i8* %45 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %6, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = icmp eq %struct.TYPE_11__* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %201

50:                                               ; preds = %36
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.TYPE_9__* @SECTION_HEADER(i32 %53)
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %5, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i8* @get_data(i32* null, i32* %55, i32 %58, i32 1, i64 %61, i8* %62)
  store i8* %63, i8** %7, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %8, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %50
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp ne i64 %73, 20
  br i1 %74, label %75, label %78

75:                                               ; preds = %69, %50
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = call i32 @free(%struct.TYPE_11__* %76)
  br label %201

78:                                               ; preds = %69
  %79 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = call i8* @SECTION_NAME(%struct.TYPE_9__* %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = udiv i64 %84, 20
  %86 = call i32 (i8*, ...) @printf(i8* %79, i8* %81, i64 %85)
  %87 = call i32 @puts(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %88

88:                                               ; preds = %195, %78
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = udiv i64 %92, 20
  %94 = icmp ult i64 %89, %93
  br i1 %94, label %95, label %198

95:                                               ; preds = %88
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @BYTE_GET(i32 %100)
  %102 = ptrtoint i8* %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i64 %102, i64* %103, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @BYTE_GET(i32 %108)
  store i8* %109, i8** %12, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @BYTE_GET(i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  store i8* %115, i8** %116, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %118 = load i64, i64* %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @BYTE_GET(i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store i8* %122, i8** %123, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = load i64, i64* %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @BYTE_GET(i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i8* %129, i8** %130, align 8
  %131 = call %struct.tm* @gmtime(i8** %12)
  store %struct.tm* %131, %struct.tm** %14, align 8
  %132 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %133 = load %struct.tm*, %struct.tm** %14, align 8
  %134 = getelementptr inbounds %struct.tm, %struct.tm* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1900
  %137 = load %struct.tm*, %struct.tm** %14, align 8
  %138 = getelementptr inbounds %struct.tm, %struct.tm* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  %141 = load %struct.tm*, %struct.tm** %14, align 8
  %142 = getelementptr inbounds %struct.tm, %struct.tm* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.tm*, %struct.tm** %14, align 8
  %145 = getelementptr inbounds %struct.tm, %struct.tm* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.tm*, %struct.tm** %14, align 8
  %148 = getelementptr inbounds %struct.tm, %struct.tm* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.tm*, %struct.tm** %14, align 8
  %151 = getelementptr inbounds %struct.tm, %struct.tm* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @snprintf(i8* %132, i32 20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %136, i32 %140, i32 %143, i32 %146, i32 %149, i32 %152)
  %154 = load i64, i64* %9, align 8
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 %154)
  %156 = load i32, i32* @do_wide, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %95
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %8, align 8
  %162 = icmp ult i64 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load i8*, i8** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  br label %169

168:                                              ; preds = %158
  br label %169

169:                                              ; preds = %168, %163
  %170 = phi i8* [ %167, %163 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), %168 ]
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %170)
  br label %186

172:                                              ; preds = %95
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %8, align 8
  %176 = icmp ult i64 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = load i8*, i8** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  br label %183

182:                                              ; preds = %172
  br label %183

183:                                              ; preds = %182, %177
  %184 = phi i8* [ %181, %177 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), %182 ]
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %184)
  br label %186

186:                                              ; preds = %183, %169
  %187 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %191 = load i8*, i8** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %187, i8* %189, i8* %191, i8* %193)
  br label %195

195:                                              ; preds = %186
  %196 = load i64, i64* %9, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %9, align 8
  br label %88

198:                                              ; preds = %88
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %200 = call i32 @free(%struct.TYPE_11__* %199)
  br label %201

201:                                              ; preds = %198, %24, %75, %49, %35
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %10, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %10, align 4
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 1
  store %struct.TYPE_9__* %206, %struct.TYPE_9__** %4, align 8
  br label %20

207:                                              ; preds = %20
  store i32 1, i32* %2, align 4
  br label %208

208:                                              ; preds = %207, %17
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i32 @SECTION_HEADER_INDEX(i32) #1

declare dso_local i8* @get_data(i32*, i32*, i32, i32, i64, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.TYPE_9__* @SECTION_HEADER(i32) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @SECTION_NAME(%struct.TYPE_9__*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i8* @BYTE_GET(i32) #1

declare dso_local %struct.tm* @gmtime(i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
