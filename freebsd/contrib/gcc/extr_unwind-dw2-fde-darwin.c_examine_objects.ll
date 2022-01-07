; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde-darwin.c_examine_objects.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde-darwin.c_examine_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i8*, %struct.TYPE_10__, i64, i64, %struct.object*, i8*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.dwarf_fde* }
%struct.dwarf_fde = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.dwarf_eh_bases = type { i8*, i64, i64 }
%struct.live_images = type { i32, i32, i8*, %struct.object*, i32, i64, %struct.live_images* }
%struct.mach_header_64 = type { i32 }

@KEYMGR_GCC3_LIVE_IMAGE_LIST = common dso_local global i32 0, align 4
@EXAMINED_IMAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"__TEXT\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"__eh_frame\00", align 1
@IMAGE_IS_TEXT_MASK = common dso_local global i32 0, align 4
@DW_EH_PE_omit = common dso_local global i32 0, align 4
@live_image_destructor = common dso_local global i32 0, align 4
@DESTRUCTOR_MAY_BE_CALLED_LIVE = common dso_local global i32 0, align 4
@seen_objects = common dso_local global %struct.object* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i8*, %struct.dwarf_eh_bases*, i32)* @examine_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @examine_objects(i8* %0, %struct.dwarf_eh_bases* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dwarf_eh_bases*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.live_images*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.object*, align 8
  %13 = alloca %struct.object, align 8
  %14 = alloca %struct.object**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.dwarf_eh_bases* %1, %struct.dwarf_eh_bases** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  %17 = load i32, i32* @KEYMGR_GCC3_LIVE_IMAGE_LIST, align 4
  %18 = call %struct.live_images* @_keymgr_get_and_lock_processwide_ptr(i32 %17)
  store %struct.live_images* %18, %struct.live_images** %8, align 8
  br label %19

19:                                               ; preds = %196, %3
  %20 = load %struct.live_images*, %struct.live_images** %8, align 8
  %21 = icmp ne %struct.live_images* %20, null
  br i1 %21, label %22, label %200

22:                                               ; preds = %19
  %23 = load %struct.live_images*, %struct.live_images** %8, align 8
  %24 = getelementptr inbounds %struct.live_images, %struct.live_images* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @EXAMINED_IMAGE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %195

29:                                               ; preds = %22
  store i8* null, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load %struct.live_images*, %struct.live_images** %8, align 8
  %34 = getelementptr inbounds %struct.live_images, %struct.live_images* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.mach_header_64*
  %37 = call i8* @getsectdatafromheader_64(%struct.mach_header_64* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64* %10)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i32, i32* @IMAGE_IS_TEXT_MASK, align 4
  %42 = load %struct.live_images*, %struct.live_images** %8, align 8
  %43 = getelementptr inbounds %struct.live_images, %struct.live_images* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %32
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %188

50:                                               ; preds = %47
  %51 = load i64, i64* %10, align 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %188

53:                                               ; preds = %50
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.live_images*, %struct.live_images** %8, align 8
  %56 = getelementptr inbounds %struct.live_images, %struct.live_images* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  store i8* %59, i8** %11, align 8
  store %struct.object* null, %struct.object** %12, align 8
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %53
  %63 = call %struct.object* @calloc(i32 1, i32 72)
  store %struct.object* %63, %struct.object** %12, align 8
  br label %64

64:                                               ; preds = %62, %53
  %65 = load %struct.object*, %struct.object** %12, align 8
  %66 = icmp eq %struct.object* %65, null
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store %struct.object* %13, %struct.object** %12, align 8
  br label %73

73:                                               ; preds = %72, %64
  %74 = load %struct.object*, %struct.object** %12, align 8
  %75 = getelementptr inbounds %struct.object, %struct.object* %74, i32 0, i32 5
  store i8* inttoptr (i64 -1 to i8*), i8** %75, align 8
  %76 = load %struct.object*, %struct.object** %12, align 8
  %77 = getelementptr inbounds %struct.object, %struct.object* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load %struct.object*, %struct.object** %12, align 8
  %79 = getelementptr inbounds %struct.object, %struct.object* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = bitcast i8* %80 to %struct.dwarf_fde*
  %82 = load %struct.object*, %struct.object** %12, align 8
  %83 = getelementptr inbounds %struct.object, %struct.object* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store %struct.dwarf_fde* %81, %struct.dwarf_fde** %84, align 8
  %85 = load %struct.object*, %struct.object** %12, align 8
  %86 = getelementptr inbounds %struct.object, %struct.object* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* @DW_EH_PE_omit, align 4
  %89 = load %struct.object*, %struct.object** %12, align 8
  %90 = getelementptr inbounds %struct.object, %struct.object* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = load %struct.object*, %struct.object** %12, align 8
  %97 = getelementptr inbounds %struct.object, %struct.object* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load %struct.live_images*, %struct.live_images** %8, align 8
  %100 = getelementptr inbounds %struct.live_images, %struct.live_images* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.object*, %struct.object** %12, align 8
  %102 = load i8*, i8** %4, align 8
  %103 = call %struct.TYPE_11__* @search_object(%struct.object* %101, i8* %102)
  store %struct.TYPE_11__* %103, %struct.TYPE_11__** %7, align 8
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %146, label %106

106:                                              ; preds = %73
  %107 = load i32, i32* @live_image_destructor, align 4
  %108 = load %struct.live_images*, %struct.live_images** %8, align 8
  %109 = getelementptr inbounds %struct.live_images, %struct.live_images* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load %struct.object*, %struct.object** %12, align 8
  %111 = load %struct.live_images*, %struct.live_images** %8, align 8
  %112 = getelementptr inbounds %struct.live_images, %struct.live_images* %111, i32 0, i32 3
  store %struct.object* %110, %struct.object** %112, align 8
  %113 = load i32, i32* @EXAMINED_IMAGE_MASK, align 4
  %114 = load i32, i32* @DESTRUCTOR_MAY_BE_CALLED_LIVE, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.live_images*, %struct.live_images** %8, align 8
  %117 = getelementptr inbounds %struct.live_images, %struct.live_images* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  store %struct.object** @seen_objects, %struct.object*** %14, align 8
  br label %120

120:                                              ; preds = %135, %106
  %121 = load %struct.object**, %struct.object*** %14, align 8
  %122 = load %struct.object*, %struct.object** %121, align 8
  %123 = icmp ne %struct.object* %122, null
  br i1 %123, label %124, label %139

124:                                              ; preds = %120
  %125 = load %struct.object**, %struct.object*** %14, align 8
  %126 = load %struct.object*, %struct.object** %125, align 8
  %127 = getelementptr inbounds %struct.object, %struct.object* %126, i32 0, i32 5
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.object*, %struct.object** %12, align 8
  %130 = getelementptr inbounds %struct.object, %struct.object* %129, i32 0, i32 5
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ult i8* %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  br label %139

134:                                              ; preds = %124
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.object**, %struct.object*** %14, align 8
  %137 = load %struct.object*, %struct.object** %136, align 8
  %138 = getelementptr inbounds %struct.object, %struct.object* %137, i32 0, i32 4
  store %struct.object** %138, %struct.object*** %14, align 8
  br label %120

139:                                              ; preds = %133, %120
  %140 = load %struct.object**, %struct.object*** %14, align 8
  %141 = load %struct.object*, %struct.object** %140, align 8
  %142 = load %struct.object*, %struct.object** %12, align 8
  %143 = getelementptr inbounds %struct.object, %struct.object* %142, i32 0, i32 4
  store %struct.object* %141, %struct.object** %143, align 8
  %144 = load %struct.object*, %struct.object** %12, align 8
  %145 = load %struct.object**, %struct.object*** %14, align 8
  store %struct.object* %144, %struct.object** %145, align 8
  br label %146

146:                                              ; preds = %139, %73
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %148 = icmp ne %struct.TYPE_11__* %147, null
  br i1 %148, label %149, label %187

149:                                              ; preds = %146
  %150 = load %struct.object*, %struct.object** %12, align 8
  %151 = getelementptr inbounds %struct.object, %struct.object* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.dwarf_eh_bases*, %struct.dwarf_eh_bases** %5, align 8
  %154 = getelementptr inbounds %struct.dwarf_eh_bases, %struct.dwarf_eh_bases* %153, i32 0, i32 2
  store i64 %152, i64* %154, align 8
  %155 = load %struct.object*, %struct.object** %12, align 8
  %156 = getelementptr inbounds %struct.object, %struct.object* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.dwarf_eh_bases*, %struct.dwarf_eh_bases** %5, align 8
  %159 = getelementptr inbounds %struct.dwarf_eh_bases, %struct.dwarf_eh_bases* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  %160 = load %struct.object*, %struct.object** %12, align 8
  %161 = getelementptr inbounds %struct.object, %struct.object* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %15, align 4
  %165 = load %struct.object*, %struct.object** %12, align 8
  %166 = getelementptr inbounds %struct.object, %struct.object* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %149
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %173 = call i32 @get_fde_encoding(%struct.TYPE_11__* %172)
  store i32 %173, i32* %15, align 4
  br label %174

174:                                              ; preds = %171, %149
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %15, align 4
  %177 = load %struct.object*, %struct.object** %12, align 8
  %178 = call i32 @base_from_object(i32 %176, %struct.object* %177)
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @read_encoded_value_with_base(i32 %175, i32 %178, i32 %181, i64* %16)
  %183 = load i64, i64* %16, align 8
  %184 = inttoptr i64 %183 to i8*
  %185 = load %struct.dwarf_eh_bases*, %struct.dwarf_eh_bases** %5, align 8
  %186 = getelementptr inbounds %struct.dwarf_eh_bases, %struct.dwarf_eh_bases* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  br label %200

187:                                              ; preds = %146
  br label %194

188:                                              ; preds = %50, %47
  %189 = load i32, i32* @EXAMINED_IMAGE_MASK, align 4
  %190 = load %struct.live_images*, %struct.live_images** %8, align 8
  %191 = getelementptr inbounds %struct.live_images, %struct.live_images* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %188, %187
  br label %195

195:                                              ; preds = %194, %22
  br label %196

196:                                              ; preds = %195
  %197 = load %struct.live_images*, %struct.live_images** %8, align 8
  %198 = getelementptr inbounds %struct.live_images, %struct.live_images* %197, i32 0, i32 6
  %199 = load %struct.live_images*, %struct.live_images** %198, align 8
  store %struct.live_images* %199, %struct.live_images** %8, align 8
  br label %19

200:                                              ; preds = %174, %19
  %201 = load i32, i32* @KEYMGR_GCC3_LIVE_IMAGE_LIST, align 4
  %202 = call i32 @_keymgr_unlock_processwide_ptr(i32 %201)
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  ret %struct.TYPE_11__* %203
}

declare dso_local %struct.live_images* @_keymgr_get_and_lock_processwide_ptr(i32) #1

declare dso_local i8* @getsectdatafromheader_64(%struct.mach_header_64*, i8*, i8*, i64*) #1

declare dso_local %struct.object* @calloc(i32, i32) #1

declare dso_local %struct.TYPE_11__* @search_object(%struct.object*, i8*) #1

declare dso_local i32 @get_fde_encoding(%struct.TYPE_11__*) #1

declare dso_local i32 @read_encoded_value_with_base(i32, i32, i32, i64*) #1

declare dso_local i32 @base_from_object(i32, %struct.object*) #1

declare dso_local i32 @_keymgr_unlock_processwide_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
