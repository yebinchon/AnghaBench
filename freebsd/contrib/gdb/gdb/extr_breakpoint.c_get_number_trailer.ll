; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_get_number_trailer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_get_number_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }

@breakpoint_count = common dso_local global i32 0, align 4
@TYPE_CODE_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Convenience variable must have integer value.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32)* @get_number_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_number_trailer(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.value*, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load i8**, i8*** %4, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @breakpoint_count, align 4
  store i32 %16, i32* %3, align 4
  br label %189

17:                                               ; preds = %2
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 36
  br i1 %21, label %22, label %81

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  store i8* %24, i8** %9, align 8
  br label %25

25:                                               ; preds = %37, %22
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @isalnum(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 95
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ true, %25 ], [ %34, %30 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  br label %25

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = add nsw i64 %45, 1
  %47 = trunc i64 %46 to i32
  %48 = call i64 @alloca(i32 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @strncpy(i8* %50, i8* %51, i32 %57)
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = getelementptr inbounds i8, i8* %59, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @lookup_internalvar(i8* %66)
  %68 = call %struct.value* @value_of_internalvar(i32 %67)
  store %struct.value* %68, %struct.value** %10, align 8
  %69 = load %struct.value*, %struct.value** %10, align 8
  %70 = call i32 @VALUE_TYPE(%struct.value* %69)
  %71 = call i64 @TYPE_CODE(i32 %70)
  %72 = load i64, i64* @TYPE_CODE_INT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %40
  %75 = load %struct.value*, %struct.value** %10, align 8
  %76 = call i64 @value_as_long(%struct.value* %75)
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %6, align 4
  br label %80

78:                                               ; preds = %40
  %79 = call i32 @printf_filtered(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %78, %74
  br label %135

81:                                               ; preds = %17
  %82 = load i8*, i8** %7, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 45
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %7, align 8
  br label %89

89:                                               ; preds = %86, %81
  br label %90

90:                                               ; preds = %102, %89
  %91 = load i8*, i8** %7, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp sge i32 %93, 48
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i8*, i8** %7, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp sle i32 %98, 57
  br label %100

100:                                              ; preds = %95, %90
  %101 = phi i1 [ false, %90 ], [ %99, %95 ]
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %7, align 8
  br label %90

105:                                              ; preds = %100
  %106 = load i8*, i8** %7, align 8
  %107 = load i8**, i8*** %4, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = icmp eq i8* %106, %108
  br i1 %109, label %110, label %130

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %126, %110
  %112 = load i8*, i8** %7, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load i8*, i8** %7, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = trunc i32 %119 to i8
  %121 = call i64 @isspace(i8 signext %120)
  %122 = icmp ne i64 %121, 0
  %123 = xor i1 %122, true
  br label %124

124:                                              ; preds = %116, %111
  %125 = phi i1 [ false, %111 ], [ %123, %116 ]
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = load i8*, i8** %7, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %7, align 8
  br label %111

129:                                              ; preds = %124
  store i32 0, i32* %6, align 4
  br label %134

130:                                              ; preds = %105
  %131 = load i8**, i8*** %4, align 8
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @atoi(i8* %132)
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %130, %129
  br label %135

135:                                              ; preds = %134, %80
  br label %136

136:                                              ; preds = %135
  %137 = load i8*, i8** %7, align 8
  %138 = load i8, i8* %137, align 1
  %139 = call i64 @isspace(i8 signext %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %176, label %141

141:                                              ; preds = %136
  %142 = load i8*, i8** %7, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %176, label %146

146:                                              ; preds = %141
  %147 = load i8*, i8** %7, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = load i32, i32* %5, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %176, label %152

152:                                              ; preds = %146
  br label %153

153:                                              ; preds = %172, %152
  %154 = load i8*, i8** %7, align 8
  %155 = load i8, i8* %154, align 1
  %156 = call i64 @isspace(i8 signext %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %169, label %158

158:                                              ; preds = %153
  %159 = load i8*, i8** %7, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %158
  %164 = load i8*, i8** %7, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = load i32, i32* %5, align 4
  %168 = icmp eq i32 %166, %167
  br label %169

169:                                              ; preds = %163, %158, %153
  %170 = phi i1 [ true, %158 ], [ true, %153 ], [ %168, %163 ]
  %171 = xor i1 %170, true
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i8*, i8** %7, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %7, align 8
  br label %153

175:                                              ; preds = %169
  store i32 0, i32* %6, align 4
  br label %176

176:                                              ; preds = %175, %146, %141, %136
  br label %177

177:                                              ; preds = %182, %176
  %178 = load i8*, i8** %7, align 8
  %179 = load i8, i8* %178, align 1
  %180 = call i64 @isspace(i8 signext %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i8*, i8** %7, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %7, align 8
  br label %177

185:                                              ; preds = %177
  %186 = load i8*, i8** %7, align 8
  %187 = load i8**, i8*** %4, align 8
  store i8* %186, i8** %187, align 8
  %188 = load i32, i32* %6, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %185, %15
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local %struct.value* @value_of_internalvar(i32) #1

declare dso_local i32 @lookup_internalvar(i8*) #1

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @value_as_long(%struct.value*) #1

declare dso_local i32 @printf_filtered(i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
