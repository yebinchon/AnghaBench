; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_decode_ARM_machine_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_decode_ARM_machine_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EF_ARM_EABIMASK = common dso_local global i32 0, align 4
@EF_ARM_RELEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c", relocatable executable\00", align 1
@EF_ARM_HASENTRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c", has entry point\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c", <unrecognized EABI>\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c", Version1 EABI\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c", sorted symbol tables\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c", Version2 EABI\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c", dynamic symbols use segment index\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c", mapping symbols precede others\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c", Version3 EABI\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c", Version4 EABI\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c", Version5 EABI\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c", BE8\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c", LE8\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c", GNU EABI\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c", interworking enabled\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c", uses APCS/26\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c", uses APCS/float\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c", position independent\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c", 8 bit structure alignment\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c", uses new ABI\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c", uses old ABI\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c", software FP\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c", VFP\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c", Maverick FP\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c", <unknown>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @decode_ARM_machine_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_ARM_machine_flags(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @EF_ARM_EABI_VERSION(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @EF_ARM_EABIMASK, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @EF_ARM_RELEXEC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strcat(i8* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EF_ARM_RELEXEC, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %2
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @EF_ARM_HASENTRY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strcat(i8* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EF_ARM_HASENTRY, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %33, %28
  %41 = load i32, i32* %5, align 4
  switch i32 %41, label %42 [
    i32 142, label %49
    i32 141, label %71
    i32 140, label %99
    i32 139, label %102
    i32 138, label %105
    i32 143, label %131
  ]

42:                                               ; preds = %40
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strcat(i8* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %42
  br label %180

49:                                               ; preds = %40
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @strcat(i8* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %69, %49
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = sub i32 0, %57
  %59 = and i32 %56, %58
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %7, align 4
  switch i32 %64, label %68 [
    i32 129, label %65
  ]

65:                                               ; preds = %55
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @strcat(i8* %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %69

68:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %65
  br label %52

70:                                               ; preds = %52
  br label %180

71:                                               ; preds = %40
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @strcat(i8* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %74

74:                                               ; preds = %97, %71
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %74
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = sub i32 0, %79
  %81 = and i32 %78, %80
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %3, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %8, align 4
  switch i32 %86, label %96 [
    i32 129, label %87
    i32 144, label %90
    i32 135, label %93
  ]

87:                                               ; preds = %77
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @strcat(i8* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %97

90:                                               ; preds = %77
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @strcat(i8* %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %97

93:                                               ; preds = %77
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 @strcat(i8* %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %97

96:                                               ; preds = %77
  store i32 1, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %93, %90, %87
  br label %74

98:                                               ; preds = %74
  br label %180

99:                                               ; preds = %40
  %100 = load i8*, i8** %4, align 8
  %101 = call i32 @strcat(i8* %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %180

102:                                              ; preds = %40
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 @strcat(i8* %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %108

105:                                              ; preds = %40
  %106 = load i8*, i8** %4, align 8
  %107 = call i32 @strcat(i8* %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %102
  br label %109

109:                                              ; preds = %129, %108
  %110 = load i32, i32* %3, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %109
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* %3, align 4
  %115 = sub i32 0, %114
  %116 = and i32 %113, %115
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %3, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %3, align 4
  %121 = load i32, i32* %9, align 4
  switch i32 %121, label %128 [
    i32 145, label %122
    i32 136, label %125
  ]

122:                                              ; preds = %112
  %123 = load i8*, i8** %4, align 8
  %124 = call i32 @strcat(i8* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %129

125:                                              ; preds = %112
  %126 = load i8*, i8** %4, align 8
  %127 = call i32 @strcat(i8* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %129

128:                                              ; preds = %112
  store i32 1, i32* %6, align 4
  br label %129

129:                                              ; preds = %128, %125, %122
  br label %109

130:                                              ; preds = %109
  br label %180

131:                                              ; preds = %40
  %132 = load i8*, i8** %4, align 8
  %133 = call i32 @strcat(i8* %132, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  br label %134

134:                                              ; preds = %178, %131
  %135 = load i32, i32* %3, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %179

137:                                              ; preds = %134
  %138 = load i32, i32* %3, align 4
  %139 = load i32, i32* %3, align 4
  %140 = sub i32 0, %139
  %141 = and i32 %138, %140
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %3, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %3, align 4
  %146 = load i32, i32* %10, align 4
  switch i32 %146, label %177 [
    i32 137, label %147
    i32 147, label %150
    i32 146, label %153
    i32 131, label %156
    i32 148, label %159
    i32 133, label %162
    i32 132, label %165
    i32 130, label %168
    i32 128, label %171
    i32 134, label %174
  ]

147:                                              ; preds = %137
  %148 = load i8*, i8** %4, align 8
  %149 = call i32 @strcat(i8* %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  br label %178

150:                                              ; preds = %137
  %151 = load i8*, i8** %4, align 8
  %152 = call i32 @strcat(i8* %151, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  br label %178

153:                                              ; preds = %137
  %154 = load i8*, i8** %4, align 8
  %155 = call i32 @strcat(i8* %154, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  br label %178

156:                                              ; preds = %137
  %157 = load i8*, i8** %4, align 8
  %158 = call i32 @strcat(i8* %157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  br label %178

159:                                              ; preds = %137
  %160 = load i8*, i8** %4, align 8
  %161 = call i32 @strcat(i8* %160, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  br label %178

162:                                              ; preds = %137
  %163 = load i8*, i8** %4, align 8
  %164 = call i32 @strcat(i8* %163, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  br label %178

165:                                              ; preds = %137
  %166 = load i8*, i8** %4, align 8
  %167 = call i32 @strcat(i8* %166, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  br label %178

168:                                              ; preds = %137
  %169 = load i8*, i8** %4, align 8
  %170 = call i32 @strcat(i8* %169, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  br label %178

171:                                              ; preds = %137
  %172 = load i8*, i8** %4, align 8
  %173 = call i32 @strcat(i8* %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  br label %178

174:                                              ; preds = %137
  %175 = load i8*, i8** %4, align 8
  %176 = call i32 @strcat(i8* %175, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  br label %178

177:                                              ; preds = %137
  store i32 1, i32* %6, align 4
  br label %178

178:                                              ; preds = %177, %174, %171, %168, %165, %162, %159, %156, %153, %150, %147
  br label %134

179:                                              ; preds = %134
  br label %180

180:                                              ; preds = %179, %130, %99, %98, %70, %48
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i8*, i8** %4, align 8
  %185 = call i32 @strcat(i8* %184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %180
  ret void
}

declare dso_local i32 @EF_ARM_EABI_VERSION(i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
