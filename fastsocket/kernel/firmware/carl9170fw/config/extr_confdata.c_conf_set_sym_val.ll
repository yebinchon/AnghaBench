; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_confdata.c_conf_set_sym_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_confdata.c_conf_set_sym_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@mod = common dso_local global i32 0, align 4
@yes = common dso_local global i32 0, align 4
@no = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"symbol value '%s' invalid for %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\22\\\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid string found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*, i32, i32, i8*)* @conf_set_sym_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_set_sym_val(%struct.symbol* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.symbol* %0, %struct.symbol** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.symbol*, %struct.symbol** %6, align 8
  %12 = getelementptr inbounds %struct.symbol, %struct.symbol* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %173 [
    i32 128, label %14
    i32 133, label %35
    i32 130, label %81
    i32 129, label %109
    i32 131, label %145
    i32 132, label %145
  ]

14:                                               ; preds = %4
  %15 = load i8*, i8** %9, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 109
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load i32, i32* @mod, align 4
  %22 = load %struct.symbol*, %struct.symbol** %6, align 8
  %23 = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %21, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.symbol*, %struct.symbol** %6, align 8
  %31 = getelementptr inbounds %struct.symbol, %struct.symbol* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %174

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %4, %34
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 121
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load i32, i32* @yes, align 4
  %43 = load %struct.symbol*, %struct.symbol** %6, align 8
  %44 = getelementptr inbounds %struct.symbol, %struct.symbol* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %42, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.symbol*, %struct.symbol** %6, align 8
  %52 = getelementptr inbounds %struct.symbol, %struct.symbol* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %174

55:                                               ; preds = %35
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 110
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load i32, i32* @no, align 4
  %63 = load %struct.symbol*, %struct.symbol** %6, align 8
  %64 = getelementptr inbounds %struct.symbol, %struct.symbol* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %62, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.symbol*, %struct.symbol** %6, align 8
  %72 = getelementptr inbounds %struct.symbol, %struct.symbol* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %174

75:                                               ; preds = %55
  %76 = load i8*, i8** %9, align 8
  %77 = load %struct.symbol*, %struct.symbol** %6, align 8
  %78 = getelementptr inbounds %struct.symbol, %struct.symbol* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i8*, ...) @conf_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %76, i32 %79)
  store i32 1, i32* %5, align 4
  br label %175

81:                                               ; preds = %4
  %82 = load i8*, i8** %9, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 34
  br i1 %85, label %86, label %108

86:                                               ; preds = %81
  %87 = load i8*, i8** %9, align 8
  store i8* %87, i8** %10, align 8
  br label %88

88:                                               ; preds = %102, %86
  %89 = load i8*, i8** %10, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i8*, i8** %10, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i32 @isspace(i8 signext %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br label %99

99:                                               ; preds = %93, %88
  %100 = phi i1 [ false, %88 ], [ %98, %93 ]
  br i1 %100, label %101, label %105

101:                                              ; preds = %99
  br label %102

102:                                              ; preds = %101
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %10, align 8
  br label %88

105:                                              ; preds = %99
  %106 = load %struct.symbol*, %struct.symbol** %6, align 8
  %107 = getelementptr inbounds %struct.symbol, %struct.symbol* %106, i32 0, i32 0
  store i32 129, i32* %107, align 8
  br label %146

108:                                              ; preds = %81
  br label %109

109:                                              ; preds = %4, %108
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %9, align 8
  %112 = load i8, i8* %110, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 34
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %174

116:                                              ; preds = %109
  %117 = load i8*, i8** %9, align 8
  store i8* %117, i8** %10, align 8
  br label %118

118:                                              ; preds = %136, %116
  %119 = load i8*, i8** %10, align 8
  %120 = call i8* @strpbrk(i8* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %120, i8** %10, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %139

122:                                              ; preds = %118
  %123 = load i8*, i8** %10, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 34
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i8*, i8** %10, align 8
  store i8 0, i8* %128, align 1
  br label %139

129:                                              ; preds = %122
  %130 = load i8*, i8** %10, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @strlen(i8* %133)
  %135 = call i32 @memmove(i8* %130, i8* %132, i32 %134)
  br label %136

136:                                              ; preds = %129
  %137 = load i8*, i8** %10, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %10, align 8
  br label %118

139:                                              ; preds = %127, %118
  %140 = load i8*, i8** %10, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %139
  %143 = call i32 (i8*, ...) @conf_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %175

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %4, %4, %144
  br label %146

146:                                              ; preds = %145, %105
  %147 = load %struct.symbol*, %struct.symbol** %6, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = call i32 @sym_string_valid(%struct.symbol* %147, i8* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %146
  %152 = load i8*, i8** %9, align 8
  %153 = call i32 @strdup(i8* %152)
  %154 = load %struct.symbol*, %struct.symbol** %6, align 8
  %155 = getelementptr inbounds %struct.symbol, %struct.symbol* %154, i32 0, i32 3
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  store i32 %153, i32* %160, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.symbol*, %struct.symbol** %6, align 8
  %163 = getelementptr inbounds %struct.symbol, %struct.symbol* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %172

166:                                              ; preds = %146
  %167 = load i8*, i8** %9, align 8
  %168 = load %struct.symbol*, %struct.symbol** %6, align 8
  %169 = getelementptr inbounds %struct.symbol, %struct.symbol* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 (i8*, ...) @conf_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %167, i32 %170)
  store i32 1, i32* %5, align 4
  br label %175

172:                                              ; preds = %151
  br label %174

173:                                              ; preds = %4
  br label %174

174:                                              ; preds = %173, %172, %115, %61, %41, %20
  store i32 0, i32* %5, align 4
  br label %175

175:                                              ; preds = %174, %166, %142, %75
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i32 @conf_warning(i8*, ...) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sym_string_valid(%struct.symbol*, i8*) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
