; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_macro.c_expand_irp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_macro.c_expand_irp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i8* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__, %struct.TYPE_24__, %struct.TYPE_24__, i32, i32* }
%struct.hash_control = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"ENDR\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"unexpected end of file in irp or irpc\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"missing model parameter\00", align 1
@FORMAL_OPTIONAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @expand_irp(i32 %0, i32 %1, %struct.TYPE_24__* %2, %struct.TYPE_24__* %3, i32 (%struct.TYPE_24__*)* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32 (%struct.TYPE_24__*)*, align 8
  %12 = alloca %struct.TYPE_24__, align 8
  %13 = alloca %struct.TYPE_25__, align 8
  %14 = alloca %struct.hash_control*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %10, align 8
  store i32 (%struct.TYPE_24__*)* %4, i32 (%struct.TYPE_24__*)** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %20 = call i32 @sb_skip_white(i32 %18, %struct.TYPE_24__* %19)
  store i32 %20, i32* %8, align 4
  %21 = call i32 @sb_new(%struct.TYPE_24__* %12)
  %22 = load i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)** %11, align 8
  %23 = call i32 @buffer_and_nest(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %12, i32 (%struct.TYPE_24__*)* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %5
  %26 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %6, align 8
  br label %189

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %29 = call i32 @sb_new(%struct.TYPE_24__* %28)
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 2
  %31 = call i32 @sb_new(%struct.TYPE_24__* %30)
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 3
  %33 = call i32 @sb_new(%struct.TYPE_24__* %32)
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %37 = call i32 @get_token(i32 %34, %struct.TYPE_24__* %35, %struct.TYPE_24__* %36)
  store i32 %37, i32* %8, align 4
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i8* %43, i8** %6, align 8
  br label %189

44:                                               ; preds = %27
  %45 = call %struct.hash_control* (...) @hash_new()
  store %struct.hash_control* %45, %struct.hash_control** %14, align 8
  %46 = load %struct.hash_control*, %struct.hash_control** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %48 = call i32 @sb_terminate(%struct.TYPE_24__* %47)
  %49 = call i8* @hash_jam(%struct.hash_control* %46, i32 %48, %struct.TYPE_25__* %13)
  store i8* %49, i8** %15, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i8*, i8** %15, align 8
  store i8* %53, i8** %6, align 8
  br label %189

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 5
  store i32* null, i32** %56, align 8
  %57 = load i32, i32* @FORMAL_OPTIONAL, align 4
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 4
  store i32 %57, i32* %58, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %60 = call i32 @sb_reset(%struct.TYPE_24__* %59)
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %63 = call i32 @sb_skip_comma(i32 %61, %struct.TYPE_24__* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %54
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %72 = load %struct.hash_control*, %struct.hash_control** %14, align 8
  %73 = call i8* @macro_expand_body(%struct.TYPE_24__* %12, %struct.TYPE_24__* %71, %struct.TYPE_25__* %13, %struct.hash_control* %72, i32 0)
  store i8* %73, i8** %15, align 8
  br label %178

74:                                               ; preds = %54
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 34
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %88, %78, %74
  br label %93

93:                                               ; preds = %176, %92
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp slt i64 %95, %98
  br i1 %99, label %100, label %177

100:                                              ; preds = %93
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 3
  %107 = call i32 @get_any_string(i32 %104, %struct.TYPE_24__* %105, %struct.TYPE_24__* %106)
  store i32 %107, i32* %8, align 4
  br label %154

108:                                              ; preds = %100
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 34
  br i1 %117, label %118, label %140

118:                                              ; preds = %108
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %16, align 4
  br label %126

126:                                              ; preds = %121, %118
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %130 = call i32 @sb_skip_white(i32 %128, %struct.TYPE_24__* %129)
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp sge i64 %132, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %126
  %138 = load i32, i32* %17, align 4
  store i32 %138, i32* %8, align 4
  br label %177

139:                                              ; preds = %126
  br label %140

140:                                              ; preds = %139, %108
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 3
  %142 = call i32 @sb_reset(%struct.TYPE_24__* %141)
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 3
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = call i32 @sb_add_char(%struct.TYPE_24__* %143, i8 signext %150)
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %140, %103
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %156 = load %struct.hash_control*, %struct.hash_control** %14, align 8
  %157 = call i8* @macro_expand_body(%struct.TYPE_24__* %12, %struct.TYPE_24__* %155, %struct.TYPE_25__* %13, %struct.hash_control* %156, i32 0)
  store i8* %157, i8** %15, align 8
  %158 = load i8*, i8** %15, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %177

161:                                              ; preds = %154
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %167 = call i32 @sb_skip_comma(i32 %165, %struct.TYPE_24__* %166)
  store i32 %167, i32* %8, align 4
  br label %176

168:                                              ; preds = %161
  %169 = load i32, i32* %16, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %174 = call i32 @sb_skip_white(i32 %172, %struct.TYPE_24__* %173)
  store i32 %174, i32* %8, align 4
  br label %175

175:                                              ; preds = %171, %168
  br label %176

176:                                              ; preds = %175, %164
  br label %93

177:                                              ; preds = %160, %137, %93
  br label %178

178:                                              ; preds = %177, %70
  %179 = load %struct.hash_control*, %struct.hash_control** %14, align 8
  %180 = call i32 @hash_die(%struct.hash_control* %179)
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 3
  %182 = call i32 @sb_kill(%struct.TYPE_24__* %181)
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 2
  %184 = call i32 @sb_kill(%struct.TYPE_24__* %183)
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %186 = call i32 @sb_kill(%struct.TYPE_24__* %185)
  %187 = call i32 @sb_kill(%struct.TYPE_24__* %12)
  %188 = load i8*, i8** %15, align 8
  store i8* %188, i8** %6, align 8
  br label %189

189:                                              ; preds = %178, %52, %42, %25
  %190 = load i8*, i8** %6, align 8
  ret i8* %190
}

declare dso_local i32 @sb_skip_white(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @sb_new(%struct.TYPE_24__*) #1

declare dso_local i32 @buffer_and_nest(i32*, i8*, %struct.TYPE_24__*, i32 (%struct.TYPE_24__*)*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @get_token(i32, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local %struct.hash_control* @hash_new(...) #1

declare dso_local i8* @hash_jam(%struct.hash_control*, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @sb_terminate(%struct.TYPE_24__*) #1

declare dso_local i32 @sb_reset(%struct.TYPE_24__*) #1

declare dso_local i32 @sb_skip_comma(i32, %struct.TYPE_24__*) #1

declare dso_local i8* @macro_expand_body(%struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_25__*, %struct.hash_control*, i32) #1

declare dso_local i32 @get_any_string(i32, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @sb_add_char(%struct.TYPE_24__*, i8 signext) #1

declare dso_local i32 @hash_die(%struct.hash_control*) #1

declare dso_local i32 @sb_kill(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
