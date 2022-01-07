; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_elf_modify_segment_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_elf_modify_segment_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_segment_map = type { i64, i32, %struct.elf_segment_map*, i32** }
%struct.TYPE_4__ = type { %struct.elf_segment_map* }
%struct.TYPE_3__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".toe\00", align 1
@PT_LOAD = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @spu_elf_modify_segment_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_elf_modify_segment_map(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.elf_segment_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.elf_segment_map*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %12 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %13 = icmp eq %struct.bfd_link_info* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %3, align 4
  br label %172

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32* @bfd_get_section_by_name(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call %struct.TYPE_4__* @elf_tdata(i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.elf_segment_map*, %struct.elf_segment_map** %21, align 8
  store %struct.elf_segment_map* %22, %struct.elf_segment_map** %8, align 8
  br label %23

23:                                               ; preds = %166, %16
  %24 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %25 = icmp ne %struct.elf_segment_map* %24, null
  br i1 %25, label %26, label %170

26:                                               ; preds = %23
  %27 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %28 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PT_LOAD, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %165

32:                                               ; preds = %26
  %33 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %34 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %165

37:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %161, %37
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %41 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %164

44:                                               ; preds = %38
  %45 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %46 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %45, i32 0, i32 3
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %7, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = icmp eq i32* %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %44
  %55 = load i32*, i32** %7, align 8
  %56 = call %struct.TYPE_3__* @spu_elf_section_data(i32* %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %160

60:                                               ; preds = %54, %44
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, 1
  %63 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %64 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %124

67:                                               ; preds = %60
  store i32 32, i32* %11, align 4
  %68 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %69 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = add i32 %71, 2
  %73 = sub i32 %70, %72
  %74 = zext i32 %73 to i64
  %75 = mul i64 %74, 8
  %76 = load i32, i32* %11, align 4
  %77 = zext i32 %76 to i64
  %78 = add i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %11, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call %struct.elf_segment_map* @bfd_zalloc(i32* %80, i32 %81)
  store %struct.elf_segment_map* %82, %struct.elf_segment_map** %10, align 8
  %83 = load %struct.elf_segment_map*, %struct.elf_segment_map** %10, align 8
  %84 = icmp eq %struct.elf_segment_map* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %67
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %3, align 4
  br label %172

87:                                               ; preds = %67
  %88 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %89 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add i32 %91, 1
  %93 = sub i32 %90, %92
  %94 = load %struct.elf_segment_map*, %struct.elf_segment_map** %10, align 8
  %95 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.elf_segment_map*, %struct.elf_segment_map** %10, align 8
  %97 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %96, i32 0, i32 3
  %98 = load i32**, i32*** %97, align 8
  %99 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %100 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %99, i32 0, i32 3
  %101 = load i32**, i32*** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = getelementptr inbounds i32*, i32** %104, i64 1
  %106 = load %struct.elf_segment_map*, %struct.elf_segment_map** %10, align 8
  %107 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @memcpy(i32** %98, i32** %105, i32 %111)
  %113 = load i64, i64* @PT_LOAD, align 8
  %114 = load %struct.elf_segment_map*, %struct.elf_segment_map** %10, align 8
  %115 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %117 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %116, i32 0, i32 2
  %118 = load %struct.elf_segment_map*, %struct.elf_segment_map** %117, align 8
  %119 = load %struct.elf_segment_map*, %struct.elf_segment_map** %10, align 8
  %120 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %119, i32 0, i32 2
  store %struct.elf_segment_map* %118, %struct.elf_segment_map** %120, align 8
  %121 = load %struct.elf_segment_map*, %struct.elf_segment_map** %10, align 8
  %122 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %123 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %122, i32 0, i32 2
  store %struct.elf_segment_map* %121, %struct.elf_segment_map** %123, align 8
  br label %124

124:                                              ; preds = %87, %60
  %125 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %126 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %125, i32 0, i32 1
  store i32 1, i32* %126, align 8
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %159

129:                                              ; preds = %124
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %132 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  store i32 32, i32* %11, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call %struct.elf_segment_map* @bfd_zalloc(i32* %133, i32 %134)
  store %struct.elf_segment_map* %135, %struct.elf_segment_map** %10, align 8
  %136 = load %struct.elf_segment_map*, %struct.elf_segment_map** %10, align 8
  %137 = icmp eq %struct.elf_segment_map* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load i32, i32* @FALSE, align 4
  store i32 %139, i32* %3, align 4
  br label %172

140:                                              ; preds = %129
  %141 = load i64, i64* @PT_LOAD, align 8
  %142 = load %struct.elf_segment_map*, %struct.elf_segment_map** %10, align 8
  %143 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load %struct.elf_segment_map*, %struct.elf_segment_map** %10, align 8
  %145 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %144, i32 0, i32 1
  store i32 1, i32* %145, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = load %struct.elf_segment_map*, %struct.elf_segment_map** %10, align 8
  %148 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %147, i32 0, i32 3
  %149 = load i32**, i32*** %148, align 8
  %150 = getelementptr inbounds i32*, i32** %149, i64 0
  store i32* %146, i32** %150, align 8
  %151 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %152 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %151, i32 0, i32 2
  %153 = load %struct.elf_segment_map*, %struct.elf_segment_map** %152, align 8
  %154 = load %struct.elf_segment_map*, %struct.elf_segment_map** %10, align 8
  %155 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %154, i32 0, i32 2
  store %struct.elf_segment_map* %153, %struct.elf_segment_map** %155, align 8
  %156 = load %struct.elf_segment_map*, %struct.elf_segment_map** %10, align 8
  %157 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %158 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %157, i32 0, i32 2
  store %struct.elf_segment_map* %156, %struct.elf_segment_map** %158, align 8
  br label %159

159:                                              ; preds = %140, %124
  br label %164

160:                                              ; preds = %54
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %9, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %38

164:                                              ; preds = %159, %38
  br label %165

165:                                              ; preds = %164, %32, %26
  br label %166

166:                                              ; preds = %165
  %167 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %168 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %167, i32 0, i32 2
  %169 = load %struct.elf_segment_map*, %struct.elf_segment_map** %168, align 8
  store %struct.elf_segment_map* %169, %struct.elf_segment_map** %8, align 8
  br label %23

170:                                              ; preds = %23
  %171 = load i32, i32* @TRUE, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %138, %85, %14
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local %struct.TYPE_4__* @elf_tdata(i32*) #1

declare dso_local %struct.TYPE_3__* @spu_elf_section_data(i32*) #1

declare dso_local %struct.elf_segment_map* @bfd_zalloc(i32*, i32) #1

declare dso_local i32 @memcpy(i32**, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
