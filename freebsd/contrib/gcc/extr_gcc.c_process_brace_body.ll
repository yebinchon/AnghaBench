; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_process_brace_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_process_brace_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@n_switches = common dso_local global i32 0, align 4
@switches = common dso_local global %struct.TYPE_2__* null, align 8
@suffix_subst = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"braced spec body '%s' is invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i32, i32)* @process_brace_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @process_brace_body(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %12, align 8
  store i32 1, i32* %14, align 4
  br label %20

20:                                               ; preds = %73, %5
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 123
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %14, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %14, align 4
  br label %73

28:                                               ; preds = %20
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 125
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* %14, align 4
  %35 = add i32 %34, -1
  store i32 %35, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %76

38:                                               ; preds = %33
  br label %72

39:                                               ; preds = %28
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 59
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* %14, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %76

48:                                               ; preds = %44, %39
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 37
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 42
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* %14, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 1, i32* %15, align 4
  br label %70

63:                                               ; preds = %59, %53, %48
  %64 = load i8*, i8** %7, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %174

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %62
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71, %38
  br label %73

73:                                               ; preds = %72, %25
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %7, align 8
  br label %20

76:                                               ; preds = %47, %37
  %77 = load i8*, i8** %7, align 8
  store i8* %77, i8** %13, align 8
  br label %78

78:                                               ; preds = %92, %76
  %79 = load i8*, i8** %13, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 -1
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 32
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load i8*, i8** %13, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 -1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 9
  br label %90

90:                                               ; preds = %84, %78
  %91 = phi i1 [ true, %78 ], [ %89, %84 ]
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = load i8*, i8** %13, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 -1
  store i8* %94, i8** %13, align 8
  br label %78

95:                                               ; preds = %90
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  br label %174

102:                                              ; preds = %98, %95
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %172

105:                                              ; preds = %102
  %106 = load i8*, i8** %12, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = call i8* @save_string(i8* %106, i32 %112)
  store i8* %113, i8** %16, align 8
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %105
  %117 = load i8*, i8** %16, align 8
  %118 = call i64 @do_spec_1(i8* %117, i32 0, i32* null)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i8* null, i8** %6, align 8
  br label %177

121:                                              ; preds = %116
  br label %171

122:                                              ; preds = %105
  %123 = load i8*, i8** %9, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %129

129:                                              ; preds = %167, %122
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* @n_switches, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %170

133:                                              ; preds = %129
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %135 = load i32, i32* %18, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @strncmp(i32* %139, i8* %140, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %166, label %144

144:                                              ; preds = %133
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %17, align 4
  %147 = call i64 @check_live_switch(i32 %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %144
  %150 = load i8*, i8** %16, align 8
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %152 = load i32, i32* %18, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %17, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = call i64 @do_spec_1(i8* %150, i32 0, i32* %159)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %149
  store i8* null, i8** %6, align 8
  br label %177

163:                                              ; preds = %149
  %164 = load i32, i32* %18, align 4
  %165 = call i32 @give_switch(i32 %164, i32 1)
  store i32* null, i32** @suffix_subst, align 8
  br label %166

166:                                              ; preds = %163, %144, %133
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %18, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %18, align 4
  br label %129

170:                                              ; preds = %129
  br label %171

171:                                              ; preds = %170, %121
  br label %172

172:                                              ; preds = %171, %102
  %173 = load i8*, i8** %7, align 8
  store i8* %173, i8** %6, align 8
  br label %177

174:                                              ; preds = %101, %68
  %175 = load i8*, i8** %12, align 8
  %176 = call i32 @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %174, %172, %162, %120
  %178 = load i8*, i8** %6, align 8
  ret i8* %178
}

declare dso_local i8* @save_string(i8*, i32) #1

declare dso_local i64 @do_spec_1(i8*, i32, i32*) #1

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

declare dso_local i64 @check_live_switch(i32, i32) #1

declare dso_local i32 @give_switch(i32, i32) #1

declare dso_local i32 @fatal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
