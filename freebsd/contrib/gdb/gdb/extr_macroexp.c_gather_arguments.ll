; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_gather_arguments.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_gather_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_buffer = type { i8*, i32, i32 }
%struct.cleanup = type { i32 }

@free_current_contents = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Malformed argument list for macro `%s'.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.macro_buffer* (i8*, %struct.macro_buffer*, i32*)* @gather_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.macro_buffer* @gather_arguments(i8* %0, %struct.macro_buffer* %1, i32* %2) #0 {
  %4 = alloca %struct.macro_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.macro_buffer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.macro_buffer, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.macro_buffer*, align 8
  %12 = alloca %struct.cleanup*, align 8
  %13 = alloca %struct.macro_buffer, align 8
  %14 = alloca %struct.macro_buffer*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.macro_buffer* %1, %struct.macro_buffer** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.macro_buffer* null, %struct.macro_buffer** %11, align 8
  %17 = load i32, i32* @free_current_contents, align 4
  %18 = call %struct.cleanup* @make_cleanup(i32 %17, %struct.macro_buffer** %11)
  store %struct.cleanup* %18, %struct.cleanup** %12, align 8
  %19 = load %struct.macro_buffer*, %struct.macro_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.macro_buffer*, %struct.macro_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @init_shared_buffer(%struct.macro_buffer* %13, i8* %21, i32 %24)
  %26 = call i32 @get_token(%struct.macro_buffer* %8, %struct.macro_buffer* %13)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %8, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %8, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 40
  br i1 %38, label %39, label %42

39:                                               ; preds = %32, %28, %3
  %40 = load %struct.cleanup*, %struct.cleanup** %12, align 8
  %41 = call i32 @discard_cleanups(%struct.cleanup* %40)
  store %struct.macro_buffer* null, %struct.macro_buffer** %4, align 8
  br label %187

42:                                               ; preds = %32
  %43 = load %struct.macro_buffer*, %struct.macro_buffer** %6, align 8
  %44 = call i32 @get_token(%struct.macro_buffer* %8, %struct.macro_buffer* %43)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 16, %46
  %48 = trunc i64 %47 to i32
  %49 = call i64 @xmalloc(i32 %48)
  %50 = inttoptr i64 %49 to %struct.macro_buffer*
  store %struct.macro_buffer* %50, %struct.macro_buffer** %11, align 8
  br label %51

51:                                               ; preds = %186, %42
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = mul nsw i32 %56, 2
  store i32 %57, i32* %10, align 4
  %58 = load %struct.macro_buffer*, %struct.macro_buffer** %11, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 16, %60
  %62 = trunc i64 %61 to i32
  %63 = call %struct.macro_buffer* @xrealloc(%struct.macro_buffer* %58, i32 %62)
  store %struct.macro_buffer* %63, %struct.macro_buffer** %11, align 8
  br label %64

64:                                               ; preds = %55, %51
  %65 = load %struct.macro_buffer*, %struct.macro_buffer** %11, align 8
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %65, i64 %68
  store %struct.macro_buffer* %69, %struct.macro_buffer** %14, align 8
  %70 = load %struct.macro_buffer*, %struct.macro_buffer** %14, align 8
  %71 = load %struct.macro_buffer*, %struct.macro_buffer** %6, align 8
  %72 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.macro_buffer*, %struct.macro_buffer** %6, align 8
  %75 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @set_token(%struct.macro_buffer* %70, i8* %73, i8* %76)
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %185, %64
  %79 = load %struct.macro_buffer*, %struct.macro_buffer** %6, align 8
  %80 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %16, align 8
  %82 = load %struct.macro_buffer*, %struct.macro_buffer** %6, align 8
  %83 = call i32 @get_token(%struct.macro_buffer* %8, %struct.macro_buffer* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %85, %78
  %89 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %8, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %8, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 40
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %15, align 4
  br label %142

102:                                              ; preds = %92, %88
  %103 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %8, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %125

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %8, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 41
  br i1 %112, label %113, label %125

113:                                              ; preds = %106
  %114 = load i32, i32* %15, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load %struct.cleanup*, %struct.cleanup** %12, align 8
  %118 = call i32 @discard_cleanups(%struct.cleanup* %117)
  %119 = load i32, i32* %9, align 4
  %120 = load i32*, i32** %7, align 8
  store i32 %119, i32* %120, align 4
  %121 = load %struct.macro_buffer*, %struct.macro_buffer** %11, align 8
  store %struct.macro_buffer* %121, %struct.macro_buffer** %4, align 8
  br label %187

122:                                              ; preds = %113
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %15, align 4
  br label %141

125:                                              ; preds = %106, %102
  %126 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %8, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %140

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %8, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 44
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load i32, i32* %15, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %186

140:                                              ; preds = %136, %129, %125
  br label %141

141:                                              ; preds = %140, %122
  br label %142

142:                                              ; preds = %141, %99
  %143 = load %struct.macro_buffer*, %struct.macro_buffer** %14, align 8
  %144 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %8, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.macro_buffer*, %struct.macro_buffer** %14, align 8
  %151 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  %152 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %8, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.macro_buffer*, %struct.macro_buffer** %14, align 8
  %155 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  %156 = load %struct.macro_buffer*, %struct.macro_buffer** %14, align 8
  %157 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %156, i32 0, i32 2
  store i32 0, i32* %157, align 4
  br label %185

158:                                              ; preds = %142
  %159 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %8, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %8, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = load %struct.macro_buffer*, %struct.macro_buffer** %14, align 8
  %166 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = ptrtoint i8* %164 to i64
  %169 = ptrtoint i8* %167 to i64
  %170 = sub i64 %168, %169
  %171 = trunc i64 %170 to i32
  %172 = load %struct.macro_buffer*, %struct.macro_buffer** %14, align 8
  %173 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 8
  %174 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %8, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.macro_buffer*, %struct.macro_buffer** %14, align 8
  %177 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = ptrtoint i8* %175 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  %182 = trunc i64 %181 to i32
  %183 = load %struct.macro_buffer*, %struct.macro_buffer** %14, align 8
  %184 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %158, %147
  br label %78

186:                                              ; preds = %139
  br label %51

187:                                              ; preds = %116, %39
  %188 = load %struct.macro_buffer*, %struct.macro_buffer** %4, align 8
  ret %struct.macro_buffer* %188
}

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.macro_buffer**) #1

declare dso_local i32 @init_shared_buffer(%struct.macro_buffer*, i8*, i32) #1

declare dso_local i32 @get_token(%struct.macro_buffer*, %struct.macro_buffer*) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local %struct.macro_buffer* @xrealloc(%struct.macro_buffer*, i32) #1

declare dso_local i32 @set_token(%struct.macro_buffer*, i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
