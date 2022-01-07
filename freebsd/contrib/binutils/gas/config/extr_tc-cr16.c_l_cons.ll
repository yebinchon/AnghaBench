; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_l_cons.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_l_cons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }

@BITS_PER_CHAR = common dso_local global i32 0, align 4
@input_line_pointer = common dso_local global i8* null, align 8
@O_absent = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"using a bit field width of zero\00", align 1
@O_constant = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"field width \22%s\22 too complex for a bitfield\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"field width %lu too big to fit in %d bytes: truncated to %d bits\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"field value \22%s\22 too complex for a bitfield\00", align 1
@code_label = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @l_cons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l_cons(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %10 = call i64 (...) @is_it_end_of_statement()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 (...) @demand_empty_rest_of_line()
  br label %187

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %177, %14
  %16 = load i32, i32* @BITS_PER_CHAR, align 4
  %17 = load i32, i32* %2, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load i8*, i8** @input_line_pointer, align 8
  store i8* %19, i8** %6, align 8
  %20 = call i32 @expression(%struct.TYPE_4__* %4)
  %21 = load i8*, i8** @input_line_pointer, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 58
  br i1 %24, label %25, label %146

25:                                               ; preds = %15
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %136, %25
  %27 = load i8*, i8** @input_line_pointer, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 58
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** @input_line_pointer, align 8
  br label %140

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @O_absent, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 (i32, ...) @as_warn(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* @O_constant, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %38, %33
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @O_constant, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i8*, i8** @input_line_pointer, align 8
  store i8 0, i8* %50, align 1
  %51 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @as_bad(i32 %51, i8* %52)
  %54 = load i8*, i8** @input_line_pointer, align 8
  store i8 58, i8* %54, align 1
  %55 = call i32 (...) @demand_empty_rest_of_line()
  br label %187

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %8, align 8
  %59 = load i32, i32* @BITS_PER_CHAR, align 4
  %60 = load i32, i32* %2, align 4
  %61 = mul nsw i32 %59, %60
  %62 = zext i32 %61 to i64
  %63 = icmp ugt i64 %58, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %56
  %65 = call i32 @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i64, i64* %8, align 8
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @BITS_PER_CHAR, align 4
  %69 = load i32, i32* %2, align 4
  %70 = mul nsw i32 %68, %69
  %71 = call i32 (i32, ...) @as_warn(i32 %65, i64 %66, i32 %67, i32 %70)
  %72 = load i32, i32* @BITS_PER_CHAR, align 4
  %73 = load i32, i32* %2, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %64, %56
  %77 = load i64, i64* %8, align 8
  %78 = load i32, i32* %5, align 4
  %79 = zext i32 %78 to i64
  %80 = icmp ugt i64 %77, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i8*, i8** %6, align 8
  store i8* %82, i8** @input_line_pointer, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i64 %83, i64* %84, align 8
  br label %140

85:                                               ; preds = %76
  %86 = load i8*, i8** @input_line_pointer, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** @input_line_pointer, align 8
  store i8* %87, i8** %6, align 8
  %88 = call i32 @expression(%struct.TYPE_4__* %4)
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @O_constant, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %85
  %94 = load i8*, i8** @input_line_pointer, align 8
  %95 = load i8, i8* %94, align 1
  store i8 %95, i8* %9, align 1
  %96 = load i8*, i8** @input_line_pointer, align 8
  store i8 0, i8* %96, align 1
  %97 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @as_bad(i32 %97, i8* %98)
  %100 = load i8, i8* %9, align 1
  %101 = load i8*, i8** @input_line_pointer, align 8
  store i8 %100, i8* %101, align 1
  %102 = call i32 (...) @demand_empty_rest_of_line()
  br label %187

103:                                              ; preds = %85
  %104 = load i64, i64* %8, align 8
  %105 = trunc i64 %104 to i32
  %106 = shl i32 -1, %105
  %107 = xor i32 %106, -1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = and i64 %108, %110
  %112 = load i32, i32* @BITS_PER_CHAR, align 4
  %113 = load i32, i32* %2, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load i32, i32* %5, align 4
  %116 = sub i32 %114, %115
  %117 = zext i32 %116 to i64
  %118 = shl i64 %111, %117
  %119 = load i64, i64* %7, align 8
  %120 = or i64 %119, %118
  store i64 %120, i64* %7, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load i32, i32* %5, align 4
  %123 = zext i32 %122 to i64
  %124 = sub i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %5, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %103
  %128 = call i64 (...) @is_it_end_of_statement()
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = load i8*, i8** @input_line_pointer, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 44
  br i1 %134, label %135, label %136

135:                                              ; preds = %130, %127, %103
  br label %140

136:                                              ; preds = %130
  %137 = load i8*, i8** @input_line_pointer, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** @input_line_pointer, align 8
  store i8* %138, i8** %6, align 8
  %139 = call i32 @expression(%struct.TYPE_4__* %4)
  br label %26

140:                                              ; preds = %135, %81, %31
  %141 = load i64, i64* %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i64 %141, i64* %142, align 8
  %143 = load i64, i64* @O_constant, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i64 %143, i64* %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32 1, i32* %145, align 8
  br label %146

146:                                              ; preds = %140, %15
  %147 = load i8*, i8** @input_line_pointer, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 64
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load i8*, i8** @input_line_pointer, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 99
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  store i32 1, i32* @code_label, align 4
  br label %158

158:                                              ; preds = %157, %151, %146
  %159 = load i32, i32* %2, align 4
  %160 = call i32 @emit_expr(%struct.TYPE_4__* %4, i32 %159)
  %161 = load i32, i32* %3, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %3, align 4
  %163 = load i8*, i8** @input_line_pointer, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 64
  br i1 %166, label %167, label %176

167:                                              ; preds = %158
  %168 = load i8*, i8** @input_line_pointer, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 1
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 99
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load i8*, i8** @input_line_pointer, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 3
  store i8* %175, i8** @input_line_pointer, align 8
  br label %183

176:                                              ; preds = %167, %158
  br label %177

177:                                              ; preds = %176
  %178 = load i8*, i8** @input_line_pointer, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** @input_line_pointer, align 8
  %180 = load i8, i8* %178, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 44
  br i1 %182, label %15, label %183

183:                                              ; preds = %177, %173
  %184 = load i8*, i8** @input_line_pointer, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 -1
  store i8* %185, i8** @input_line_pointer, align 8
  %186 = call i32 (...) @demand_empty_rest_of_line()
  br label %187

187:                                              ; preds = %183, %93, %49, %12
  ret void
}

declare dso_local i64 @is_it_end_of_statement(...) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

declare dso_local i32 @expression(%struct.TYPE_4__*) #1

declare dso_local i32 @as_warn(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @as_bad(i32, i8*) #1

declare dso_local i32 @emit_expr(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
