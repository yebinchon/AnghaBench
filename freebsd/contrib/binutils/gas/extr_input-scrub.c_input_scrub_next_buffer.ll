; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_input-scrub.c_input_scrub_next_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_input-scrub.c_input_scrub_next_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@sb_index = common dso_local global i64 0, align 8
@from_sb = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@from_sb_is_expansion = common dso_local global i64 0, align 8
@macro_nest = common dso_local global i32 0, align 4
@partial_where = common dso_local global i8* null, align 8
@next_saved_file = common dso_local global i32* null, align 8
@partial_size = common dso_local global i32 0, align 4
@buffer_start = common dso_local global i8* null, align 8
@BEFORE_SIZE = common dso_local global i32 0, align 4
@save_source = common dso_local global i8* null, align 8
@AFTER_SIZE = common dso_local global i32 0, align 4
@buffer_length = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"partial line at end of file ignored\00", align 1
@AFTER_STRING = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @input_scrub_next_buffer(i8** %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %7 = load i64, i64* @sb_index, align 8
  %8 = icmp sge i64 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %1
  %10 = load i64, i64* @sb_index, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @from_sb, i32 0, i32 0), align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = call i32 @sb_kill(%struct.TYPE_3__* @from_sb)
  %15 = load i64, i64* @from_sb_is_expansion, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @macro_nest, align 4
  %19 = call i32 @cond_finish_check(i32 %18)
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i32, i32* @macro_nest, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* @macro_nest, align 4
  store i8* null, i8** @partial_where, align 8
  %23 = load i32*, i32** @next_saved_file, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32*, i32** @next_saved_file, align 8
  %27 = call i8* @input_scrub_pop(i32* %26)
  %28 = load i8**, i8*** %3, align 8
  store i8* %27, i8** %28, align 8
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i8*, i8** @partial_where, align 8
  store i8* %30, i8** %2, align 8
  br label %201

31:                                               ; preds = %9
  %32 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @from_sb, i32 0, i32 1), align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @from_sb, i32 0, i32 0), align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** @partial_where, align 8
  store i32 0, i32* @partial_size, align 4
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @from_sb, i32 0, i32 1), align 8
  %36 = load i64, i64* @sb_index, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8**, i8*** %3, align 8
  store i8* %37, i8** %38, align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @from_sb, i32 0, i32 0), align 8
  store i64 %39, i64* @sb_index, align 8
  %40 = load i8*, i8** @partial_where, align 8
  store i8* %40, i8** %2, align 8
  br label %201

41:                                               ; preds = %1
  %42 = load i8*, i8** @buffer_start, align 8
  %43 = load i32, i32* @BEFORE_SIZE, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8**, i8*** %3, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* @partial_size, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %41
  %50 = load i8*, i8** @buffer_start, align 8
  %51 = load i32, i32* @BEFORE_SIZE, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8*, i8** @partial_where, align 8
  %55 = load i32, i32* @partial_size, align 4
  %56 = call i32 @memmove(i8* %53, i8* %54, i32 %55)
  %57 = load i8*, i8** @buffer_start, align 8
  %58 = load i32, i32* @BEFORE_SIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8*, i8** @save_source, align 8
  %62 = load i32, i32* @AFTER_SIZE, align 4
  %63 = call i32 @memcpy(i8* %60, i8* %61, i32 %62)
  br label %64

64:                                               ; preds = %49, %41
  %65 = load i8*, i8** @buffer_start, align 8
  %66 = load i32, i32* @BEFORE_SIZE, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i32, i32* @partial_size, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = call i8* @input_file_give_next_buffer(i8* %71)
  store i8* %72, i8** %4, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %184

75:                                               ; preds = %64
  %76 = load i8*, i8** %4, align 8
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 -1
  store i8* %78, i8** %5, align 8
  br label %79

79:                                               ; preds = %91, %75
  %80 = load i8*, i8** %5, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 10
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = load i8*, i8** %5, align 8
  %86 = call i64 @TC_EOL_IN_INSN(i8* %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %84, %79
  %89 = phi i1 [ true, %79 ], [ %87, %84 ]
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %90
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 -1
  store i8* %93, i8** %5, align 8
  br label %79

94:                                               ; preds = %88
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %5, align 8
  br label %97

97:                                               ; preds = %165, %94
  %98 = load i8*, i8** %5, align 8
  %99 = load i8*, i8** @buffer_start, align 8
  %100 = load i32, i32* @BEFORE_SIZE, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = icmp ule i8* %98, %102
  br i1 %103, label %104, label %168

104:                                              ; preds = %97
  %105 = load i8*, i8** %4, align 8
  %106 = load i8*, i8** @buffer_start, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %6, align 4
  %111 = call i64 (...) @input_file_buffer_size()
  %112 = load i32, i32* @buffer_length, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* @buffer_length, align 4
  %116 = load i8*, i8** @buffer_start, align 8
  %117 = load i32, i32* @BEFORE_SIZE, align 4
  %118 = load i32, i32* @buffer_length, align 4
  %119 = mul nsw i32 2, %118
  %120 = add nsw i32 %117, %119
  %121 = load i32, i32* @AFTER_SIZE, align 4
  %122 = add nsw i32 %120, %121
  %123 = call i8* @xrealloc(i8* %116, i32 %122)
  store i8* %123, i8** @buffer_start, align 8
  %124 = load i8*, i8** @buffer_start, align 8
  %125 = load i32, i32* @BEFORE_SIZE, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8**, i8*** %3, align 8
  store i8* %127, i8** %128, align 8
  %129 = load i8*, i8** @buffer_start, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = call i8* @input_file_give_next_buffer(i8* %132)
  store i8* %133, i8** %4, align 8
  %134 = load i8*, i8** %4, align 8
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %146

136:                                              ; preds = %104
  %137 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %138 = call i32 @as_warn(i32 %137)
  store i8* null, i8** @partial_where, align 8
  %139 = load i32*, i32** @next_saved_file, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i32*, i32** @next_saved_file, align 8
  %143 = call i8* @input_scrub_pop(i32* %142)
  %144 = load i8**, i8*** %3, align 8
  store i8* %143, i8** %144, align 8
  br label %145

145:                                              ; preds = %141, %136
  store i8* null, i8** %2, align 8
  br label %201

146:                                              ; preds = %104
  %147 = load i8*, i8** %4, align 8
  store i8 0, i8* %147, align 1
  %148 = load i8*, i8** %4, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 -1
  store i8* %149, i8** %5, align 8
  br label %150

150:                                              ; preds = %162, %146
  %151 = load i8*, i8** %5, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 10
  br i1 %154, label %159, label %155

155:                                              ; preds = %150
  %156 = load i8*, i8** %5, align 8
  %157 = call i64 @TC_EOL_IN_INSN(i8* %156)
  %158 = icmp ne i64 %157, 0
  br label %159

159:                                              ; preds = %155, %150
  %160 = phi i1 [ true, %150 ], [ %158, %155 ]
  br i1 %160, label %161, label %165

161:                                              ; preds = %159
  br label %162

162:                                              ; preds = %161
  %163 = load i8*, i8** %5, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 -1
  store i8* %164, i8** %5, align 8
  br label %150

165:                                              ; preds = %159
  %166 = load i8*, i8** %5, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %5, align 8
  br label %97

168:                                              ; preds = %97
  %169 = load i8*, i8** %5, align 8
  store i8* %169, i8** @partial_where, align 8
  %170 = load i8*, i8** %4, align 8
  %171 = load i8*, i8** %5, align 8
  %172 = ptrtoint i8* %170 to i64
  %173 = ptrtoint i8* %171 to i64
  %174 = sub i64 %172, %173
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* @partial_size, align 4
  %176 = load i8*, i8** @save_source, align 8
  %177 = load i8*, i8** @partial_where, align 8
  %178 = load i32, i32* @AFTER_SIZE, align 4
  %179 = call i32 @memcpy(i8* %176, i8* %177, i32 %178)
  %180 = load i8*, i8** @partial_where, align 8
  %181 = load i8*, i8** @AFTER_STRING, align 8
  %182 = load i32, i32* @AFTER_SIZE, align 4
  %183 = call i32 @memcpy(i8* %180, i8* %181, i32 %182)
  br label %199

184:                                              ; preds = %64
  store i8* null, i8** @partial_where, align 8
  %185 = load i32, i32* @partial_size, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %189 = call i32 @as_warn(i32 %188)
  br label %190

190:                                              ; preds = %187, %184
  %191 = call i32 (...) @LISTING_EOF()
  %192 = load i32*, i32** @next_saved_file, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = load i32*, i32** @next_saved_file, align 8
  %196 = call i8* @input_scrub_pop(i32* %195)
  %197 = load i8**, i8*** %3, align 8
  store i8* %196, i8** %197, align 8
  br label %198

198:                                              ; preds = %194, %190
  br label %199

199:                                              ; preds = %198, %168
  %200 = load i8*, i8** @partial_where, align 8
  store i8* %200, i8** %2, align 8
  br label %201

201:                                              ; preds = %199, %145, %31, %29
  %202 = load i8*, i8** %2, align 8
  ret i8* %202
}

declare dso_local i32 @sb_kill(%struct.TYPE_3__*) #1

declare dso_local i32 @cond_finish_check(i32) #1

declare dso_local i8* @input_scrub_pop(i32*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @input_file_give_next_buffer(i8*) #1

declare dso_local i64 @TC_EOL_IN_INSN(i8*) #1

declare dso_local i64 @input_file_buffer_size(...) #1

declare dso_local i8* @xrealloc(i8*, i32) #1

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @LISTING_EOF(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
