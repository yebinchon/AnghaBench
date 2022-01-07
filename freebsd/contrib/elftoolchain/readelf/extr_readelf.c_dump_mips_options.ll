; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_mips_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_mips_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i32 (i32**, i32)* }
%struct.section = type { i8*, i32 }
%struct.TYPE_3__ = type { i64, i32* }

@.str = private unnamed_addr constant [23 x i8] c"elf_rawdata failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\0ASection %s contains:\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Truncated MIPS option header\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Malformed MIPS option header\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c" EXCEPTIONS FPU_MIN: %#x\0A\00", align 1
@OEX_FPU_MIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"%11.11s FPU_MAX: %#x\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OEX_FPU_MAX = common dso_local global i32 0, align 4
@mips_exceptions_option = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c" %-10.10s section: %ju\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"OPAD\00", align 1
@mips_pad_option = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"HWPATCH\00", align 1
@mips_hwpatch_option = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"HWAND\00", align 1
@mips_hwa_option = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"HWOR\00", align 1
@mips_hwo_option = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c" %-10.10s %#jx\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"FILL\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c" %-10.10s\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"TAGS\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c" %-10.10s GP group number: %#x\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"GP_GROUP\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c" %-10.10s GP group is self-contained\0A\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c" %-10.10s default GP group number: %#x\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"IDENT\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c" %-10.10s default GP group is self-contained\0A\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"PAGESIZE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, %struct.section*)* @dump_mips_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_mips_options(%struct.readelf* %0, %struct.section* %1) #0 {
  %3 = alloca %struct.readelf*, align 8
  %4 = alloca %struct.section*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %3, align 8
  store %struct.section* %1, %struct.section** %4, align 8
  %13 = call i32 (...) @elf_errno()
  %14 = load %struct.section*, %struct.section** %4, align 8
  %15 = getelementptr inbounds %struct.section, %struct.section* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_3__* @elf_rawdata(i32 %16, i32* null)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %5, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = call i32 (...) @elf_errno()
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @elf_errmsg(i32 %24)
  %26 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %19
  br label %165

28:                                               ; preds = %2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %165

34:                                               ; preds = %28
  %35 = load %struct.section*, %struct.section** %4, align 8
  %36 = getelementptr inbounds %struct.section, %struct.section* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32* %46, i32** %9, align 8
  br label %47

47:                                               ; preds = %160, %34
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ult i32* %48, %49
  br i1 %50, label %51, label %165

51:                                               ; preds = %47
  %52 = load i32*, i32** %9, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = ptrtoint i32* %52 to i64
  %55 = ptrtoint i32* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 4
  %58 = icmp slt i64 %57, 8
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %165

61:                                               ; preds = %51
  %62 = load %struct.readelf*, %struct.readelf** %3, align 8
  %63 = getelementptr inbounds %struct.readelf, %struct.readelf* %62, i32 0, i32 0
  %64 = load i32 (i32**, i32)*, i32 (i32**, i32)** %63, align 8
  %65 = call i32 %64(i32** %8, i32 1)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.readelf*, %struct.readelf** %3, align 8
  %67 = getelementptr inbounds %struct.readelf, %struct.readelf* %66, i32 0, i32 0
  %68 = load i32 (i32**, i32)*, i32 (i32**, i32)** %67, align 8
  %69 = call i32 %68(i32** %8, i32 1)
  store i32 %69, i32* %11, align 4
  %70 = load %struct.readelf*, %struct.readelf** %3, align 8
  %71 = getelementptr inbounds %struct.readelf, %struct.readelf* %70, i32 0, i32 0
  %72 = load i32 (i32**, i32)*, i32 (i32**, i32)** %71, align 8
  %73 = call i32 %72(i32** %8, i32 2)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.readelf*, %struct.readelf** %3, align 8
  %75 = getelementptr inbounds %struct.readelf, %struct.readelf* %74, i32 0, i32 0
  %76 = load i32 (i32**, i32)*, i32 (i32**, i32)** %75, align 8
  %77 = call i32 %76(i32** %8, i32 4)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 8
  br i1 %79, label %91, label %80

80:                                               ; preds = %61
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %81, 8
  %83 = sext i32 %82 to i64
  %84 = load i32*, i32** %9, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = ptrtoint i32* %84 to i64
  %87 = ptrtoint i32* %85 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 4
  %90 = icmp sgt i64 %83, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %80, %61
  %92 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %165

93:                                               ; preds = %80
  %94 = load i32, i32* %11, align 4
  %95 = sub nsw i32 %94, 8
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %10, align 4
  switch i32 %96, label %159 [
    i32 129, label %97
    i32 138, label %102
    i32 131, label %114
    i32 133, label %120
    i32 135, label %124
    i32 134, label %128
    i32 137, label %132
    i32 128, label %135
    i32 136, label %137
    i32 132, label %147
    i32 130, label %157
  ]

97:                                               ; preds = %93
  %98 = load %struct.readelf*, %struct.readelf** %3, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @dump_mips_odk_reginfo(%struct.readelf* %98, i32* %99, i32 %100)
  br label %160

102:                                              ; preds = %93
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @OEX_FPU_MIN, align 4
  %105 = and i32 %103, %104
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @OEX_FPU_MAX, align 4
  %109 = and i32 %107, %108
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @mips_exceptions_option, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @dump_mips_option_flags(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 %111, i32 %112)
  br label %160

114:                                              ; preds = %93
  %115 = load i32, i32* %7, align 4
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @mips_pad_option, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @dump_mips_option_flags(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 %117, i32 %118)
  br label %160

120:                                              ; preds = %93
  %121 = load i32, i32* @mips_hwpatch_option, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @dump_mips_option_flags(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %121, i32 %122)
  br label %160

124:                                              ; preds = %93
  %125 = load i32, i32* @mips_hwa_option, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @dump_mips_option_flags(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %125, i32 %126)
  br label %160

128:                                              ; preds = %93
  %129 = load i32, i32* @mips_hwo_option, align 4
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @dump_mips_option_flags(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %129, i32 %130)
  br label %160

132:                                              ; preds = %93
  %133 = load i32, i32* %6, align 4
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %133)
  br label %160

135:                                              ; preds = %93
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %160

137:                                              ; preds = %93
  %138 = load i32, i32* %6, align 4
  %139 = and i32 %138, 65535
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %6, align 4
  %142 = and i32 %141, 65536
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %137
  br label %160

147:                                              ; preds = %93
  %148 = load i32, i32* %6, align 4
  %149 = and i32 %148, 65535
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %6, align 4
  %152 = and i32 %151, 65536
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %147
  br label %160

157:                                              ; preds = %93
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  br label %160

159:                                              ; preds = %93
  br label %160

160:                                              ; preds = %159, %157, %156, %146, %135, %132, %128, %124, %120, %114, %102, %97
  %161 = load i32, i32* %11, align 4
  %162 = load i32*, i32** %8, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %8, align 8
  br label %47

165:                                              ; preds = %27, %33, %59, %91, %47
  ret void
}

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_3__* @elf_rawdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dump_mips_odk_reginfo(%struct.readelf*, i32*, i32) #1

declare dso_local i32 @dump_mips_option_flags(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
