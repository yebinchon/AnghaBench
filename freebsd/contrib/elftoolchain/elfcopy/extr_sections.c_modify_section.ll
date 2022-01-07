; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_modify_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_modify_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32 }
%struct.section = type { i8*, i64, i32, i32 }
%struct.sec_action = type { i8* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*, %struct.section*)* @modify_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modify_section(%struct.elfcopy* %0, %struct.section* %1) #0 {
  %3 = alloca %struct.elfcopy*, align 8
  %4 = alloca %struct.section*, align 8
  %5 = alloca %struct.sec_action*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.elfcopy* %0, %struct.elfcopy** %3, align 8
  store %struct.section* %1, %struct.section** %4, align 8
  %16 = load %struct.section*, %struct.section** %4, align 8
  %17 = call i8* @read_section(%struct.section* %16, i64* %6)
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20, %2
  %24 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %25 = load %struct.section*, %struct.section** %4, align 8
  %26 = getelementptr inbounds %struct.section, %struct.section* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @is_append_section(%struct.elfcopy* %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %210

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %20
  %33 = load i64, i64* %6, align 8
  store i64 %33, i64* %7, align 8
  %34 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %35 = load %struct.section*, %struct.section** %4, align 8
  %36 = getelementptr inbounds %struct.section, %struct.section* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @is_append_section(%struct.elfcopy* %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %32
  %41 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %42 = load %struct.section*, %struct.section** %4, align 8
  %43 = getelementptr inbounds %struct.section, %struct.section* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.sec_action* @lookup_sec_act(%struct.elfcopy* %41, i32 %44, i32 0)
  store %struct.sec_action* %45, %struct.sec_action** %5, align 8
  %46 = load %struct.sec_action*, %struct.sec_action** %5, align 8
  %47 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %40, %32
  %55 = load i64, i64* %7, align 8
  %56 = call i8* @malloc(i64 %55)
  store i8* %56, i8** %10, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @EXIT_FAILURE, align 4
  %60 = call i32 @err(i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i8*, i8** %10, align 8
  %63 = load %struct.section*, %struct.section** %4, align 8
  %64 = getelementptr inbounds %struct.section, %struct.section* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  store i64 0, i64* %8, align 8
  %65 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %66 = load %struct.section*, %struct.section** %4, align 8
  %67 = getelementptr inbounds %struct.section, %struct.section* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @is_compress_section(%struct.elfcopy* %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %161

71:                                               ; preds = %61
  %72 = load i8*, i8** %13, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %14, align 8
  %75 = load i8*, i8** %13, align 8
  store i8* %75, i8** %11, align 8
  br label %76

76:                                               ; preds = %155, %71
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = icmp ult i8* %77, %78
  br i1 %79, label %80, label %160

80:                                               ; preds = %76
  store i64 0, i64* %9, align 8
  br label %81

81:                                               ; preds = %96, %80
  %82 = load i8*, i8** %11, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8*, i8** %14, align 8
  %86 = icmp ult i8* %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load i8*, i8** %11, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br label %94

94:                                               ; preds = %87, %81
  %95 = phi i1 [ false, %81 ], [ %93, %87 ]
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = load i64, i64* %9, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %9, align 8
  br label %81

99:                                               ; preds = %94
  %100 = load i8*, i8** %11, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i8*, i8** %14, align 8
  %104 = icmp eq i8* %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %99
  %106 = load i8*, i8** %10, align 8
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = load i8*, i8** %11, align 8
  %110 = load i64, i64* %9, align 8
  %111 = call i32 @strncpy(i8* %108, i8* %109, i64 %110)
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* %8, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %8, align 8
  br label %160

115:                                              ; preds = %99
  store i32 0, i32* %15, align 4
  %116 = load i8*, i8** %10, align 8
  store i8* %116, i8** %12, align 8
  br label %117

117:                                              ; preds = %129, %115
  %118 = load i8*, i8** %12, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  %122 = icmp ult i8* %118, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %117
  %124 = load i8*, i8** %12, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = call i64 @strcmp(i8* %124, i8* %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 1, i32* %15, align 4
  br label %136

129:                                              ; preds = %123
  %130 = load i8*, i8** %12, align 8
  %131 = call i32 @strlen(i8* %130)
  %132 = add nsw i32 %131, 1
  %133 = load i8*, i8** %12, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8* %135, i8** %12, align 8
  br label %117

136:                                              ; preds = %128, %117
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %155, label %139

139:                                              ; preds = %136
  %140 = load i8*, i8** %10, align 8
  %141 = load i64, i64* %8, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  %143 = load i8*, i8** %11, align 8
  %144 = load i64, i64* %9, align 8
  %145 = call i32 @strncpy(i8* %142, i8* %143, i64 %144)
  %146 = load i8*, i8** %10, align 8
  %147 = load i64, i64* %8, align 8
  %148 = load i64, i64* %9, align 8
  %149 = add i64 %147, %148
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  store i8 0, i8* %150, align 1
  %151 = load i64, i64* %9, align 8
  %152 = add i64 %151, 1
  %153 = load i64, i64* %8, align 8
  %154 = add i64 %153, %152
  store i64 %154, i64* %8, align 8
  br label %155

155:                                              ; preds = %139, %136
  %156 = load i64, i64* %9, align 8
  %157 = add i64 %156, 1
  %158 = load i8*, i8** %11, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 %157
  store i8* %159, i8** %11, align 8
  br label %76

160:                                              ; preds = %105, %76
  br label %169

161:                                              ; preds = %61
  %162 = load i8*, i8** %10, align 8
  %163 = load i8*, i8** %13, align 8
  %164 = load i64, i64* %6, align 8
  %165 = call i32 @memcpy(i8* %162, i8* %163, i64 %164)
  %166 = load i64, i64* %6, align 8
  %167 = load i64, i64* %8, align 8
  %168 = add i64 %167, %166
  store i64 %168, i64* %8, align 8
  br label %169

169:                                              ; preds = %161, %160
  %170 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %171 = load %struct.section*, %struct.section** %4, align 8
  %172 = getelementptr inbounds %struct.section, %struct.section* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @is_append_section(%struct.elfcopy* %170, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %204

176:                                              ; preds = %169
  %177 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %178 = load %struct.section*, %struct.section** %4, align 8
  %179 = getelementptr inbounds %struct.section, %struct.section* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call %struct.sec_action* @lookup_sec_act(%struct.elfcopy* %177, i32 %180, i32 0)
  store %struct.sec_action* %181, %struct.sec_action** %5, align 8
  %182 = load %struct.sec_action*, %struct.sec_action** %5, align 8
  %183 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @strlen(i8* %184)
  %186 = sext i32 %185 to i64
  store i64 %186, i64* %9, align 8
  %187 = load i8*, i8** %10, align 8
  %188 = load i64, i64* %8, align 8
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  %190 = load %struct.sec_action*, %struct.sec_action** %5, align 8
  %191 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = load i64, i64* %9, align 8
  %194 = call i32 @strncpy(i8* %189, i8* %192, i64 %193)
  %195 = load i8*, i8** %10, align 8
  %196 = load i64, i64* %8, align 8
  %197 = load i64, i64* %9, align 8
  %198 = add i64 %196, %197
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  store i8 0, i8* %199, align 1
  %200 = load i64, i64* %9, align 8
  %201 = add i64 %200, 1
  %202 = load i64, i64* %8, align 8
  %203 = add i64 %202, %201
  store i64 %203, i64* %8, align 8
  br label %204

204:                                              ; preds = %176, %169
  %205 = load i64, i64* %8, align 8
  %206 = load %struct.section*, %struct.section** %4, align 8
  %207 = getelementptr inbounds %struct.section, %struct.section* %206, i32 0, i32 1
  store i64 %205, i64* %207, align 8
  %208 = load %struct.section*, %struct.section** %4, align 8
  %209 = getelementptr inbounds %struct.section, %struct.section* %208, i32 0, i32 2
  store i32 1, i32* %209, align 8
  br label %210

210:                                              ; preds = %204, %30
  ret void
}

declare dso_local i8* @read_section(%struct.section*, i64*) #1

declare dso_local i64 @is_append_section(%struct.elfcopy*, i32) #1

declare dso_local %struct.sec_action* @lookup_sec_act(%struct.elfcopy*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @is_compress_section(%struct.elfcopy*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
