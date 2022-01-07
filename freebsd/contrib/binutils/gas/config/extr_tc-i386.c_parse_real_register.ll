; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_parse_real_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_parse_real_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@MAX_REG_NAME_SIZE = common dso_local global i32 0, align 4
@REGISTER_PREFIX = common dso_local global i8 0, align 1
@register_chars = common dso_local global i8* null, align 8
@allow_naked_reg = common dso_local global i64 0, align 8
@identifier_chars = common dso_local global i64* null, align 8
@reg_hash = common dso_local global i32 0, align 4
@i386_regtab = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"st(0)\00", align 1
@RegRex64 = common dso_local global i32 0, align 4
@RegRex = common dso_local global i32 0, align 4
@Reg64 = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@cpu_arch_flags = common dso_local global i32 0, align 4
@CpuSledgehammer = common dso_local global i32 0, align 4
@flag_code = common dso_local global i64 0, align 8
@CODE_64BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i8*, i8**)* @parse_real_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @parse_real_register(i8* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i32, i32* @MAX_REG_NAME_SIZE, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* @REGISTER_PREFIX, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %6, align 8
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @is_space_char(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %33, %28
  store i8* %18, i8** %7, align 8
  br label %37

37:                                               ; preds = %55, %36
  %38 = load i8*, i8** @register_chars, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  store i8 %43, i8* %44, align 1
  %46 = sext i8 %43 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %37
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* @MAX_REG_NAME_SIZE, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %18, i64 %51
  %53 = icmp uge i8* %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %11, align 4
  br label %181

55:                                               ; preds = %48
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  br label %37

58:                                               ; preds = %37
  %59 = load i64, i64* @allow_naked_reg, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i64*, i64** @identifier_chars, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %11, align 4
  br label %181

70:                                               ; preds = %61, %58
  %71 = load i8*, i8** %6, align 8
  %72 = load i8**, i8*** %5, align 8
  store i8* %71, i8** %72, align 8
  %73 = load i32, i32* @reg_hash, align 4
  %74 = call %struct.TYPE_6__* @hash_find(i32 %73, i8* %18)
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %10, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @i386_regtab, align 8
  %77 = icmp eq %struct.TYPE_6__* %75, %76
  br i1 %77, label %78, label %145

78:                                               ; preds = %70
  %79 = load i8*, i8** %6, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @is_space_char(i8 signext %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %6, align 8
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i8*, i8** %6, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 40
  br i1 %90, label %91, label %144

91:                                               ; preds = %86
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %6, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @is_space_char(i8 signext %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 8
  br label %101

101:                                              ; preds = %98, %91
  %102 = load i8*, i8** %6, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp sge i32 %104, 48
  br i1 %105, label %106, label %143

106:                                              ; preds = %101
  %107 = load i8*, i8** %6, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp sle i32 %109, 55
  br i1 %110, label %111, label %143

111:                                              ; preds = %106
  %112 = load i8*, i8** %6, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = sub nsw i32 %114, 48
  store i32 %115, i32* %12, align 4
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %6, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = load i8, i8* %118, align 1
  %120 = call i64 @is_space_char(i8 signext %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %111
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %6, align 8
  br label %125

125:                                              ; preds = %122, %111
  %126 = load i8*, i8** %6, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 41
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load i8**, i8*** %5, align 8
  store i8* %132, i8** %133, align 8
  %134 = load i32, i32* @reg_hash, align 4
  %135 = call %struct.TYPE_6__* @hash_find(i32 %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* %135, %struct.TYPE_6__** %10, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %137 = call i32 @know(%struct.TYPE_6__* %136)
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  store %struct.TYPE_6__* %141, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %11, align 4
  br label %181

142:                                              ; preds = %125
  br label %143

143:                                              ; preds = %142, %106, %101
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %11, align 4
  br label %181

144:                                              ; preds = %86
  br label %145

145:                                              ; preds = %144, %70
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %147 = icmp ne %struct.TYPE_6__* %146, null
  br i1 %147, label %148, label %179

148:                                              ; preds = %145
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @RegRex64, align 4
  %153 = load i32, i32* @RegRex, align 4
  %154 = or i32 %152, %153
  %155 = and i32 %151, %154
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @Reg64, align 4
  %160 = and i32 %158, %159
  %161 = or i32 %155, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %179

163:                                              ; preds = %148
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @Control, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %174, label %169

169:                                              ; preds = %163
  %170 = load i32, i32* @cpu_arch_flags, align 4
  %171 = load i32, i32* @CpuSledgehammer, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %169, %163
  %175 = load i64, i64* @flag_code, align 8
  %176 = load i64, i64* @CODE_64BIT, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %11, align 4
  br label %181

179:                                              ; preds = %174, %169, %148, %145
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %180, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %11, align 4
  br label %181

181:                                              ; preds = %179, %178, %143, %130, %69, %54
  %182 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %182)
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %183
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @is_space_char(i8 signext) #2

declare dso_local %struct.TYPE_6__* @hash_find(i32, i8*) #2

declare dso_local i32 @know(%struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
