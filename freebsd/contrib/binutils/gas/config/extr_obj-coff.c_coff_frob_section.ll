; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-coff.c_coff_frob_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-coff.c_coff_frob_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32, i32, i8*, %struct.TYPE_16__*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__*, %struct.TYPE_16__* }

@OCTETS_PER_BYTE_POWER = common dso_local global i32 0, align 4
@stdoutput = common dso_local global i32 0, align 4
@text_section = common dso_local global %struct.TYPE_15__* null, align 8
@data_section = common dso_local global %struct.TYPE_15__* null, align 8
@bss_section = common dso_local global %struct.TYPE_15__* null, align 8
@C_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c".stabstr\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".stab\00", align 1
@STAB_SECTION_NAME = common dso_local global i32 0, align 4
@STAB_STRING_SECTION_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coff_frob_section(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @OCTETS_PER_BYTE_POWER, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %20 = call i32 @bfd_get_section_size(%struct.TYPE_15__* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %9, align 4
  %22 = shl i32 1, %21
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %8, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @stdoutput, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @bfd_set_section_size(i32 %35, %struct.TYPE_15__* %36, i32 %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %40 = call %struct.TYPE_17__* @seg_info(%struct.TYPE_15__* %39)
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %5, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %46 = call %struct.TYPE_17__* @seg_info(%struct.TYPE_15__* %45)
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %11, align 8
  br label %51

51:                                               ; preds = %57, %28
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %56 = icmp ne %struct.TYPE_16__* %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %5, align 8
  br label %51

61:                                               ; preds = %51
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %61, %1
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %72
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** @text_section, align 8
  %78 = icmp eq %struct.TYPE_15__* %76, %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** @data_section, align 8
  %82 = icmp eq %struct.TYPE_15__* %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** @bss_section, align 8
  %86 = icmp eq %struct.TYPE_15__* %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %83, %79, %75, %72
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %89 = call i32* @section_symbol(%struct.TYPE_15__* %88)
  store i32* %89, i32** %12, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* @C_STAT, align 4
  %92 = call i32 @S_SET_STORAGE_CLASS(i32* %90, i32 %91)
  %93 = load i32*, i32** %12, align 8
  %94 = call i32 @S_SET_NUMBER_AUXILIARY(i32* %93, i32 1)
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @SF_SET_STATICS(i32* %95)
  %97 = load i32*, i32** %12, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @SA_SET_SCN_SCNLEN(i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %87, %83
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @streq(i32 ptrtoint ([9 x i8]* @.str to i32), i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  br label %163

107:                                              ; preds = %100
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  store %struct.TYPE_15__* %108, %struct.TYPE_15__** %3, align 8
  %109 = call %struct.TYPE_15__* @subseg_get(i32 ptrtoint ([6 x i8]* @.str.1 to i32), i32 0)
  store %struct.TYPE_15__* %109, %struct.TYPE_15__** %2, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %111 = call i32 @bfd_get_section_size(%struct.TYPE_15__* %110)
  store i32 %111, i32* %6, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %113 = call i32 @bfd_get_section_size(%struct.TYPE_15__* %112)
  %114 = sdiv i32 %113, 12
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %117 = call %struct.TYPE_17__* @seg_info(%struct.TYPE_15__* %116)
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  store %struct.TYPE_16__* %121, %struct.TYPE_16__** %5, align 8
  br label %122

122:                                              ; preds = %132, %107
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %124 = icmp ne %struct.TYPE_16__* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 0
  br label %130

130:                                              ; preds = %125, %122
  %131 = phi i1 [ false, %122 ], [ %129, %125 ]
  br i1 %131, label %132, label %136

132:                                              ; preds = %130
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %134, align 8
  store %struct.TYPE_16__* %135, %struct.TYPE_16__** %5, align 8
  br label %122

136:                                              ; preds = %130
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %138 = icmp ne %struct.TYPE_16__* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp sge i32 %142, 12
  br label %144

144:                                              ; preds = %139, %136
  %145 = phi i1 [ false, %136 ], [ %143, %139 ]
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  store i8* %150, i8** %4, align 8
  %151 = load i32, i32* @stdoutput, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i8*, i8** %4, align 8
  %154 = bitcast i8* %153 to i32*
  %155 = getelementptr inbounds i32, i32* %154, i64 6
  %156 = call i32 @bfd_h_put_16(i32 %151, i32 %152, i32* %155)
  %157 = load i32, i32* @stdoutput, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i8*, i8** %4, align 8
  %160 = bitcast i8* %159 to i32*
  %161 = getelementptr inbounds i32, i32* %160, i64 8
  %162 = call i32 @bfd_h_put_32(i32 %157, i32 %158, i32* %161)
  br label %163

163:                                              ; preds = %144, %106
  ret void
}

declare dso_local i32 @bfd_get_section_size(%struct.TYPE_15__*) #1

declare dso_local i32 @bfd_set_section_size(i32, %struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_17__* @seg_info(%struct.TYPE_15__*) #1

declare dso_local i32* @section_symbol(%struct.TYPE_15__*) #1

declare dso_local i32 @S_SET_STORAGE_CLASS(i32*, i32) #1

declare dso_local i32 @S_SET_NUMBER_AUXILIARY(i32*, i32) #1

declare dso_local i32 @SF_SET_STATICS(i32*) #1

declare dso_local i32 @SA_SET_SCN_SCNLEN(i32*, i32) #1

declare dso_local i32 @streq(i32, i32) #1

declare dso_local %struct.TYPE_15__* @subseg_get(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bfd_h_put_16(i32, i32, i32*) #1

declare dso_local i32 @bfd_h_put_32(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
