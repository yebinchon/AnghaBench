; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_setup_user_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_setup_user_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_args = type { i32, %struct.TYPE_2__*, %struct.user_args* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.cleanup = type { i32 }

@user_args = common dso_local global %struct.user_args* null, align 8
@arg_cleanup = common dso_local global i32 0, align 4
@MAXUSERARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"user defined function may only have %d arguments.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cleanup* (i8*)* @setup_user_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cleanup* @setup_user_args(i8* %0) #0 {
  %2 = alloca %struct.cleanup*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.user_args*, align 8
  %5 = alloca %struct.cleanup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = call i64 @xmalloc(i32 24)
  %12 = inttoptr i64 %11 to %struct.user_args*
  store %struct.user_args* %12, %struct.user_args** %4, align 8
  %13 = load %struct.user_args*, %struct.user_args** %4, align 8
  %14 = call i32 @memset(%struct.user_args* %13, i32 0, i32 24)
  %15 = load %struct.user_args*, %struct.user_args** @user_args, align 8
  %16 = load %struct.user_args*, %struct.user_args** %4, align 8
  %17 = getelementptr inbounds %struct.user_args, %struct.user_args* %16, i32 0, i32 2
  store %struct.user_args* %15, %struct.user_args** %17, align 8
  %18 = load %struct.user_args*, %struct.user_args** %4, align 8
  store %struct.user_args* %18, %struct.user_args** @user_args, align 8
  %19 = load i32, i32* @arg_cleanup, align 4
  %20 = call %struct.cleanup* @make_cleanup(i32 %19, i32 0)
  store %struct.cleanup* %20, %struct.cleanup** %5, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  store %struct.cleanup* %24, %struct.cleanup** %2, align 8
  br label %161

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %139, %25
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %159

30:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MAXUSERARGS, align 4
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @MAXUSERARGS, align 4
  %36 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  store %struct.cleanup* %37, %struct.cleanup** %2, align 8
  br label %161

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i8*, i8** %3, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 32
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %3, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 9
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ true, %39 ], [ %48, %44 ]
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %3, align 8
  br label %39

54:                                               ; preds = %49
  %55 = load i8*, i8** %3, align 8
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = load %struct.user_args*, %struct.user_args** @user_args, align 8
  %58 = getelementptr inbounds %struct.user_args, %struct.user_args* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i8* %56, i8** %63, align 8
  br label %64

64:                                               ; preds = %138, %54
  %65 = load i8*, i8** %3, align 8
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %68, label %139

68:                                               ; preds = %64
  %69 = load i8*, i8** %3, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 32
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %3, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 9
  br i1 %77, label %78, label %88

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  br label %139

88:                                               ; preds = %84, %81, %78, %73
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 0, i32* %10, align 4
  br label %135

92:                                               ; preds = %88
  %93 = load i8*, i8** %3, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 92
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 1, i32* %10, align 4
  br label %134

98:                                               ; preds = %92
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i8*, i8** %3, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 39
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %106, %101
  br label %133

108:                                              ; preds = %98
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load i8*, i8** %3, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 34
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %116, %111
  br label %132

118:                                              ; preds = %108
  %119 = load i8*, i8** %3, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 39
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 1, i32* %8, align 4
  br label %131

124:                                              ; preds = %118
  %125 = load i8*, i8** %3, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 34
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 1, i32* %9, align 4
  br label %130

130:                                              ; preds = %129, %124
  br label %131

131:                                              ; preds = %130, %123
  br label %132

132:                                              ; preds = %131, %117
  br label %133

133:                                              ; preds = %132, %107
  br label %134

134:                                              ; preds = %133, %97
  br label %135

135:                                              ; preds = %134, %91
  %136 = load i8*, i8** %3, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %3, align 8
  br label %138

138:                                              ; preds = %135
  br label %64

139:                                              ; preds = %87, %64
  %140 = load i8*, i8** %3, align 8
  %141 = load i8*, i8** %7, align 8
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = load %struct.user_args*, %struct.user_args** @user_args, align 8
  %147 = getelementptr inbounds %struct.user_args, %struct.user_args* %146, i32 0, i32 1
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  store i32 %145, i32* %152, align 8
  %153 = load i32, i32* %6, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %6, align 4
  %155 = load %struct.user_args*, %struct.user_args** @user_args, align 8
  %156 = getelementptr inbounds %struct.user_args, %struct.user_args* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  br label %26

159:                                              ; preds = %26
  %160 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  store %struct.cleanup* %160, %struct.cleanup** %2, align 8
  br label %161

161:                                              ; preds = %159, %34, %23
  %162 = load %struct.cleanup*, %struct.cleanup** %2, align 8
  ret %struct.cleanup* %162
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.user_args*, i32, i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i32) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
