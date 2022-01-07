; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_ar.c__libelf_ar_gethdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_ar.c__libelf_ar_gethdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_12__*, i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_11__, i64, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_12__* }
%struct.ar_hdr = type { i8*, i8*, i8*, i8*, i8* }

@ARGUMENT = common dso_local global i32 0, align 4
@LIBELF_F_AR_HEADER = common dso_local global i32 0, align 4
@SARMAG = common dso_local global i64 0, align 8
@RESOURCE = common dso_local global i32 0, align 4
@LIBELF_AR_BSD_EXTENDED_NAME_PREFIX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @_libelf_ar_gethdr(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ar_hdr*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %4, align 8
  %13 = icmp eq %struct.TYPE_13__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ARGUMENT, align 4
  %16 = call i32 @LIBELF_SET_ERROR(i32 %15, i32 0)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %195

17:                                               ; preds = %1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @LIBELF_F_AR_HEADER, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = inttoptr i64 %30 to %struct.ar_hdr*
  store %struct.ar_hdr* %31, %struct.ar_hdr** %9, align 8
  %32 = load %struct.ar_hdr*, %struct.ar_hdr** %9, align 8
  %33 = ptrtoint %struct.ar_hdr* %32 to i64
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SARMAG, align 8
  %38 = add i64 %36, %37
  %39 = icmp uge i64 %33, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.ar_hdr*, %struct.ar_hdr** %9, align 8
  %43 = ptrtoint %struct.ar_hdr* %42 to i64
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %46, %49
  %51 = sub i64 %50, 40
  %52 = icmp ule i64 %43, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = call %struct.TYPE_12__* @malloc(i32 56)
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %5, align 8
  %56 = icmp eq %struct.TYPE_12__* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %17
  %58 = load i32, i32* @RESOURCE, align 4
  %59 = call i32 @LIBELF_SET_ERROR(i32 %58, i32 0)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %195

60:                                               ; preds = %17
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %64, align 8
  %65 = load i32, i32* @LIBELF_F_AR_HEADER, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %71, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %73, align 8
  %74 = load %struct.ar_hdr*, %struct.ar_hdr** %9, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = call %struct.TYPE_12__* @_libelf_ar_get_translated_name(%struct.ar_hdr* %74, %struct.TYPE_13__* %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %78, align 8
  %79 = icmp eq %struct.TYPE_12__* %76, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %60
  br label %157

81:                                               ; preds = %60
  %82 = load %struct.ar_hdr*, %struct.ar_hdr** %9, align 8
  %83 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @_libelf_ar_get_number(i8* %84, i32 8, i32 10, i64* %7)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %157

88:                                               ; preds = %81
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 6
  store i64 %89, i64* %91, align 8
  %92 = load %struct.ar_hdr*, %struct.ar_hdr** %9, align 8
  %93 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @_libelf_ar_get_number(i8* %94, i32 8, i32 10, i64* %7)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %157

98:                                               ; preds = %88
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 5
  store i64 %99, i64* %101, align 8
  %102 = load %struct.ar_hdr*, %struct.ar_hdr** %9, align 8
  %103 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @_libelf_ar_get_number(i8* %104, i32 8, i32 8, i64* %7)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %157

108:                                              ; preds = %98
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 4
  store i64 %109, i64* %111, align 8
  %112 = load %struct.ar_hdr*, %struct.ar_hdr** %9, align 8
  %113 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = call i64 @_libelf_ar_get_number(i8* %114, i32 8, i32 10, i64* %7)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  br label %157

118:                                              ; preds = %108
  %119 = load %struct.ar_hdr*, %struct.ar_hdr** %9, align 8
  %120 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @IS_EXTENDED_BSD_NAME(i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %118
  %125 = load %struct.ar_hdr*, %struct.ar_hdr** %9, align 8
  %126 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %125, i32 0, i32 4
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* @LIBELF_AR_BSD_EXTENDED_NAME_PREFIX_SIZE, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  store i8* %130, i8** %6, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = load i32, i32* @LIBELF_AR_BSD_EXTENDED_NAME_PREFIX_SIZE, align 4
  %133 = sext i32 %132 to i64
  %134 = sub i64 8, %133
  %135 = trunc i64 %134 to i32
  %136 = call i64 @_libelf_ar_get_number(i8* %131, i32 %135, i32 10, i64* %8)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %124
  br label %157

139:                                              ; preds = %124
  %140 = load i64, i64* %8, align 8
  %141 = load i64, i64* %7, align 8
  %142 = sub i64 %141, %140
  store i64 %142, i64* %7, align 8
  br label %143

143:                                              ; preds = %139, %118
  %144 = load i64, i64* %7, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load %struct.ar_hdr*, %struct.ar_hdr** %9, align 8
  %148 = call %struct.TYPE_12__* @_libelf_ar_get_raw_name(%struct.ar_hdr* %147)
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  store %struct.TYPE_12__* %148, %struct.TYPE_12__** %150, align 8
  %151 = icmp eq %struct.TYPE_12__* %148, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  br label %157

153:                                              ; preds = %143
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 3
  store i64 0, i64* %155, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %156, %struct.TYPE_12__** %2, align 8
  br label %195

157:                                              ; preds = %152, %138, %117, %107, %97, %87, %80
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %159 = icmp ne %struct.TYPE_12__* %158, null
  br i1 %159, label %160, label %183

160:                                              ; preds = %157
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = icmp ne %struct.TYPE_12__* %163, null
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = call i32 @free(%struct.TYPE_12__* %168)
  br label %170

170:                                              ; preds = %165, %160
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = icmp ne %struct.TYPE_12__* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = call i32 @free(%struct.TYPE_12__* %178)
  br label %180

180:                                              ; preds = %175, %170
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %182 = call i32 @free(%struct.TYPE_12__* %181)
  br label %183

183:                                              ; preds = %180, %157
  %184 = load i32, i32* @LIBELF_F_AR_HEADER, align 4
  %185 = xor i32 %184, -1
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load %struct.ar_hdr*, %struct.ar_hdr** %9, align 8
  %191 = bitcast %struct.ar_hdr* %190 to i8*
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  store i8* %191, i8** %194, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %195

195:                                              ; preds = %183, %153, %57, %14
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %196
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

declare dso_local %struct.TYPE_12__* @_libelf_ar_get_translated_name(%struct.ar_hdr*, %struct.TYPE_13__*) #1

declare dso_local i64 @_libelf_ar_get_number(i8*, i32, i32, i64*) #1

declare dso_local i64 @IS_EXTENDED_BSD_NAME(i8*) #1

declare dso_local %struct.TYPE_12__* @_libelf_ar_get_raw_name(%struct.ar_hdr*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
