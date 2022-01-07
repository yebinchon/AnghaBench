; ModuleID = '/home/carl/AnghaBench/freebsd/bin/rm/extr_rm.c_rm_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/rm/extr_rm.c_rm_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@Wflag = common dso_local global i64 0, align 8
@S_IFWHT = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@fflag = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@eval = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@dflag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: is a directory\00", align 1
@uid = common dso_local global i32 0, align 4
@UF_APPEND = common dso_local global i32 0, align 4
@UF_IMMUTABLE = common dso_local global i32 0, align 4
@SF_APPEND = common dso_local global i32 0, align 4
@SF_IMMUTABLE = common dso_local global i32 0, align 4
@vflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@info = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @rm_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rm_file(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  br label %6

6:                                                ; preds = %160, %70, %54, %40, %35, %1
  %7 = load i8**, i8*** %2, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i32 1
  store i8** %8, i8*** %2, align 8
  %9 = load i8*, i8** %7, align 8
  store i8* %9, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %161

11:                                               ; preds = %6
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @lstat(i8* %12, %struct.stat* %3)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = load i64, i64* @Wflag, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* @S_IFWHT, align 4
  %20 = load i32, i32* @S_IWUSR, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @S_IRUSR, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  br label %36

25:                                               ; preds = %15
  %26 = load i32, i32* @fflag, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @ENOENT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %25
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %33)
  store i32 1, i32* @eval, align 4
  br label %35

35:                                               ; preds = %32, %28
  br label %6

36:                                               ; preds = %18
  br label %46

37:                                               ; preds = %11
  %38 = load i64, i64* @Wflag, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* @EEXIST, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 %43)
  store i32 1, i32* @eval, align 4
  br label %6

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %36
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @S_ISDIR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @dflag, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  store i32 1, i32* @eval, align 4
  br label %6

57:                                               ; preds = %51, %46
  %58 = load i32, i32* @fflag, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @S_ISWHT(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @check(i8* %66, i8* %67, %struct.stat* %3)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %6

71:                                               ; preds = %65, %60, %57
  store i32 0, i32* %4, align 4
  %72 = load i32, i32* @uid, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %105, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @S_ISWHT(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %105, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @UF_APPEND, align 4
  %83 = load i32, i32* @UF_IMMUTABLE, align 4
  %84 = or i32 %82, %83
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SF_APPEND, align 4
  %91 = load i32, i32* @SF_IMMUTABLE, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %87
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @UF_APPEND, align 4
  %100 = load i32, i32* @UF_IMMUTABLE, align 4
  %101 = or i32 %99, %100
  %102 = xor i32 %101, -1
  %103 = and i32 %98, %102
  %104 = call i32 @lchflags(i8* %96, i32 %103)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %95, %87, %79, %74, %71
  %106 = load i32, i32* %4, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @S_ISWHT(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 @undelete(i8* %114)
  store i32 %115, i32* %4, align 4
  br label %128

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @S_ISDIR(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i8*, i8** %5, align 8
  %123 = call i32 @rmdir(i8* %122)
  store i32 %123, i32* %4, align 4
  br label %127

124:                                              ; preds = %116
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @unlink(i8* %125)
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %124, %121
  br label %128

128:                                              ; preds = %127, %113
  br label %129

129:                                              ; preds = %128, %105
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load i32, i32* @fflag, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i64, i64* @errno, align 8
  %137 = load i64, i64* @ENOENT, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135, %132
  %140 = load i8*, i8** %5, align 8
  %141 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %140)
  store i32 1, i32* @eval, align 4
  br label %142

142:                                              ; preds = %139, %135, %129
  %143 = load i64, i64* @vflag, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i32, i32* %4, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i8*, i8** %5, align 8
  %150 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %148, %145, %142
  %152 = load i64, i64* @info, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load i32, i32* %4, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  store i64 0, i64* @info, align 8
  %158 = load i8*, i8** %5, align 8
  %159 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %158)
  br label %160

160:                                              ; preds = %157, %154, %151
  br label %6

161:                                              ; preds = %6
  ret void
}

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISWHT(i32) #1

declare dso_local i32 @check(i8*, i8*, %struct.stat*) #1

declare dso_local i32 @lchflags(i8*, i32) #1

declare dso_local i32 @undelete(i8*) #1

declare dso_local i32 @rmdir(i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
