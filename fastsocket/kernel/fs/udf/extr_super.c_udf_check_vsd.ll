; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_check_vsd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_check_vsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.volStructDesc = type { i64*, i32 }
%struct.buffer_head = type { i64 }
%struct.udf_sb_info = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Starting at sector %u (%ld byte sectors)\0A\00", align 1
@VSD_STD_ID_CD001 = common dso_local global i32 0, align 4
@VSD_STD_ID_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ISO9660 Boot Record found\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"ISO9660 Primary Volume Descriptor found\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"ISO9660 Supplementary Volume Descriptor found\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"ISO9660 Volume Partition Descriptor found\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"ISO9660 Volume Descriptor Set Terminator found\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"ISO9660 VRS (%u) found\0A\00", align 1
@VSD_STD_ID_BEA01 = common dso_local global i32 0, align 4
@VSD_STD_ID_TEA01 = common dso_local global i32 0, align 4
@VSD_STD_ID_NSR02 = common dso_local global i32 0, align 4
@VSD_STD_ID_NSR03 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @udf_check_vsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_check_vsd(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.volStructDesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.udf_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.volStructDesc* null, %struct.volStructDesc** %4, align 8
  store i32 32768, i32* %5, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %11)
  store %struct.udf_sb_info* %12, %struct.udf_sb_info** %10, align 8
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 16, i32* %6, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.super_block*, %struct.super_block** %3, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %19, %18
  %24 = load %struct.udf_sb_info*, %struct.udf_sb_info** %10, align 8
  %25 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.super_block*, %struct.super_block** %3, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %26, %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.super_block*, %struct.super_block** %3, align 8
  %35 = getelementptr inbounds %struct.super_block, %struct.super_block* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %33, %36
  %38 = load %struct.super_block*, %struct.super_block** %3, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %160, %23
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i1 [ false, %42 ], [ %48, %45 ]
  br i1 %50, label %51, label %164

51:                                               ; preds = %49
  %52 = load %struct.super_block*, %struct.super_block** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.super_block*, %struct.super_block** %3, align 8
  %55 = getelementptr inbounds %struct.super_block, %struct.super_block* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %53, %56
  %58 = call %struct.buffer_head* @udf_tread(%struct.super_block* %52, i32 %57)
  store %struct.buffer_head* %58, %struct.buffer_head** %7, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %60 = icmp ne %struct.buffer_head* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  br label %164

62:                                               ; preds = %51
  %63 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.super_block*, %struct.super_block** %3, align 8
  %68 = getelementptr inbounds %struct.super_block, %struct.super_block* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = and i32 %66, %70
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %65, %72
  %74 = inttoptr i64 %73 to %struct.volStructDesc*
  store %struct.volStructDesc* %74, %struct.volStructDesc** %4, align 8
  %75 = load %struct.volStructDesc*, %struct.volStructDesc** %4, align 8
  %76 = getelementptr inbounds %struct.volStructDesc, %struct.volStructDesc* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %62
  %82 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %83 = call i32 @brelse(%struct.buffer_head* %82)
  br label %164

84:                                               ; preds = %62
  %85 = load %struct.volStructDesc*, %struct.volStructDesc** %4, align 8
  %86 = getelementptr inbounds %struct.volStructDesc, %struct.volStructDesc* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* @VSD_STD_ID_CD001, align 4
  %89 = load i32, i32* @VSD_STD_ID_LEN, align 4
  %90 = call i32 @strncmp(i64* %87, i32 %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %112, label %92

92:                                               ; preds = %84
  %93 = load %struct.volStructDesc*, %struct.volStructDesc** %4, align 8
  %94 = getelementptr inbounds %struct.volStructDesc, %struct.volStructDesc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  switch i32 %95, label %106 [
    i32 0, label %96
    i32 1, label %98
    i32 2, label %100
    i32 3, label %102
    i32 255, label %104
  ]

96:                                               ; preds = %92
  %97 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %111

98:                                               ; preds = %92
  %99 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %111

100:                                              ; preds = %92
  %101 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %111

102:                                              ; preds = %92
  %103 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %111

104:                                              ; preds = %92
  %105 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %111

106:                                              ; preds = %92
  %107 = load %struct.volStructDesc*, %struct.volStructDesc** %4, align 8
  %108 = getelementptr inbounds %struct.volStructDesc, %struct.volStructDesc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %106, %104, %102, %100, %98, %96
  br label %156

112:                                              ; preds = %84
  %113 = load %struct.volStructDesc*, %struct.volStructDesc** %4, align 8
  %114 = getelementptr inbounds %struct.volStructDesc, %struct.volStructDesc* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* @VSD_STD_ID_BEA01, align 4
  %117 = load i32, i32* @VSD_STD_ID_LEN, align 4
  %118 = call i32 @strncmp(i64* %115, i32 %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %112
  br label %155

121:                                              ; preds = %112
  %122 = load %struct.volStructDesc*, %struct.volStructDesc** %4, align 8
  %123 = getelementptr inbounds %struct.volStructDesc, %struct.volStructDesc* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* @VSD_STD_ID_TEA01, align 4
  %126 = load i32, i32* @VSD_STD_ID_LEN, align 4
  %127 = call i32 @strncmp(i64* %124, i32 %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %121
  %130 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %131 = call i32 @brelse(%struct.buffer_head* %130)
  br label %164

132:                                              ; preds = %121
  %133 = load %struct.volStructDesc*, %struct.volStructDesc** %4, align 8
  %134 = getelementptr inbounds %struct.volStructDesc, %struct.volStructDesc* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* @VSD_STD_ID_NSR02, align 4
  %137 = load i32, i32* @VSD_STD_ID_LEN, align 4
  %138 = call i32 @strncmp(i64* %135, i32 %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %132
  %141 = load i32, i32* %5, align 4
  store i32 %141, i32* %8, align 4
  br label %153

142:                                              ; preds = %132
  %143 = load %struct.volStructDesc*, %struct.volStructDesc** %4, align 8
  %144 = getelementptr inbounds %struct.volStructDesc, %struct.volStructDesc* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* @VSD_STD_ID_NSR03, align 4
  %147 = load i32, i32* @VSD_STD_ID_LEN, align 4
  %148 = call i32 @strncmp(i64* %145, i32 %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %142
  %151 = load i32, i32* %5, align 4
  store i32 %151, i32* %9, align 4
  br label %152

152:                                              ; preds = %150, %142
  br label %153

153:                                              ; preds = %152, %140
  br label %154

154:                                              ; preds = %153
  br label %155

155:                                              ; preds = %154, %120
  br label %156

156:                                              ; preds = %155, %111
  br label %157

157:                                              ; preds = %156
  %158 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %159 = call i32 @brelse(%struct.buffer_head* %158)
  br label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %5, align 4
  br label %42

164:                                              ; preds = %129, %81, %61, %49
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i32, i32* %9, align 4
  store i32 %168, i32* %2, align 4
  br label %187

169:                                              ; preds = %164
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %2, align 4
  br label %187

174:                                              ; preds = %169
  %175 = load i32, i32* %5, align 4
  %176 = load %struct.udf_sb_info*, %struct.udf_sb_info** %10, align 8
  %177 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.super_block*, %struct.super_block** %3, align 8
  %180 = getelementptr inbounds %struct.super_block, %struct.super_block* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 %178, %181
  %183 = sub nsw i32 %175, %182
  %184 = icmp eq i32 %183, 32768
  br i1 %184, label %185, label %186

185:                                              ; preds = %174
  store i32 -1, i32* %2, align 4
  br label %187

186:                                              ; preds = %174
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %186, %185, %172, %167
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_debug(i8*, ...) #1

declare dso_local %struct.buffer_head* @udf_tread(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @strncmp(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
