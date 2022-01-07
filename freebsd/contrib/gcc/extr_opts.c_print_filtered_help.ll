; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_print_filtered_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_print_filtered_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8* }

@print_filtered_help.printed = internal global i8* null, align 8
@CL_COMMON = common dso_local global i32 0, align 4
@CL_TARGET = common dso_local global i32 0, align 4
@cl_options_count = common dso_local global i32 0, align 4
@cl_options = common dso_local global %struct.TYPE_2__* null, align 8
@CL_UNDOCUMENTED = common dso_local global i32 0, align 4
@undocumented_msg = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_filtered_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_filtered_help(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @CL_COMMON, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @CL_TARGET, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14, %1
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i8*, i8** @print_filtered_help.printed, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @cl_options_count, align 4
  %24 = call i8* @xmalloc(i32 %23)
  store i8* %24, i8** @print_filtered_help.printed, align 8
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i8*, i8** @print_filtered_help.printed, align 8
  %27 = load i32, i32* @cl_options_count, align 4
  %28 = call i32 @memset(i8* %26, i32 0, i32 %27)
  br label %87

29:                                               ; preds = %14
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @CL_COMMON, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %77, %29
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @cl_options_count, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %80

37:                                               ; preds = %33
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cl_options, align 8
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %2, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %77

49:                                               ; preds = %37
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cl_options, align 8
  %51 = load i32, i32* %3, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CL_UNDOCUMENTED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %77

60:                                               ; preds = %49
  %61 = load i8*, i8** @print_filtered_help.printed, align 8
  %62 = load i32, i32* %3, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  store i32 1, i32* %7, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cl_options, align 8
  %69 = load i32, i32* %3, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @print_switch(i8* %73, i32 %74)
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %67, %60
  br label %77

77:                                               ; preds = %76, %59, %48
  %78 = load i32, i32* %3, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %33

80:                                               ; preds = %33
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = call i32 @putchar(i8 signext 10)
  %85 = call i32 @putchar(i8 signext 10)
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %25
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %169, %87
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @cl_options_count, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %172

92:                                               ; preds = %88
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cl_options, align 8
  %94 = load i32, i32* %3, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* %2, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  br label %169

104:                                              ; preds = %92
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cl_options, align 8
  %106 = load i32, i32* %3, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @CL_UNDOCUMENTED, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %169

115:                                              ; preds = %104
  %116 = load i8*, i8** @print_filtered_help.printed, align 8
  %117 = load i32, i32* %3, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = icmp ne i8 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %169

123:                                              ; preds = %115
  %124 = load i8*, i8** @print_filtered_help.printed, align 8
  %125 = load i32, i32* %3, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 1, i8* %127, align 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cl_options, align 8
  %129 = load i32, i32* %3, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %8, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %123
  %137 = load i8*, i8** @undocumented_msg, align 8
  store i8* %137, i8** %8, align 8
  br label %138

138:                                              ; preds = %136, %123
  %139 = load i8*, i8** %8, align 8
  %140 = call i8* @_(i8* %139)
  store i8* %140, i8** %8, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = call i8* @strchr(i8* %141, i8 signext 9)
  store i8* %142, i8** %10, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %155

145:                                              ; preds = %138
  %146 = load i8*, i8** %10, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = ptrtoint i8* %146 to i64
  %149 = ptrtoint i8* %147 to i64
  %150 = sub i64 %148, %149
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %4, align 4
  %152 = load i8*, i8** %8, align 8
  store i8* %152, i8** %9, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  store i8* %154, i8** %8, align 8
  br label %164

155:                                              ; preds = %138
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cl_options, align 8
  %157 = load i32, i32* %3, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  store i8* %161, i8** %9, align 8
  %162 = load i8*, i8** %9, align 8
  %163 = call i32 @strlen(i8* %162)
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %155, %145
  %165 = load i8*, i8** %8, align 8
  %166 = load i8*, i8** %9, align 8
  %167 = load i32, i32* %4, align 4
  %168 = call i32 @wrap_help(i8* %165, i8* %166, i32 %167)
  br label %169

169:                                              ; preds = %164, %122, %114, %103
  %170 = load i32, i32* %3, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %3, align 4
  br label %88

172:                                              ; preds = %88
  %173 = call i32 @putchar(i8 signext 10)
  ret void
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @print_switch(i8*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @wrap_help(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
