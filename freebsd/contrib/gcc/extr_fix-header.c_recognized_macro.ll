; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fix-header.c_recognized_macro.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fix-header.c_recognized_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fn_decl = type { i32 }

@required_unseen_count = common dso_local global i32 0, align 4
@special_file_handling = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"errno\00", align 1
@seen_errno = common dso_local global i32 0, align 4
@required_other = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"EXIT_FAILURE\00", align 1
@seen_EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"EXIT_SUCCESS\00", align 1
@seen_EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"S_IFBLK\00", align 1
@seen_S_IFBLK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"S_ISBLK\00", align 1
@seen_S_ISBLK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"S_IFCHR\00", align 1
@seen_S_IFCHR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"S_ISCHR\00", align 1
@seen_S_ISCHR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"S_IFDIR\00", align 1
@seen_S_IFDIR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"S_ISDIR\00", align 1
@seen_S_ISDIR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"S_IFIFO\00", align 1
@seen_S_IFIFO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"S_ISFIFO\00", align 1
@seen_S_ISFIFO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"S_IFLNK\00", align 1
@seen_S_IFLNK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"S_ISLNK\00", align 1
@seen_S_ISLNK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"S_IFREG\00", align 1
@seen_S_IFREG = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"S_ISREG\00", align 1
@seen_S_ISREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @recognized_macro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recognized_macro(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fn_decl*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = call %struct.fn_decl* @lookup_std_proto(i8* %4, i32 %6)
  store %struct.fn_decl* %7, %struct.fn_decl** %3, align 8
  %8 = load %struct.fn_decl*, %struct.fn_decl** %3, align 8
  %9 = icmp ne %struct.fn_decl* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.fn_decl*, %struct.fn_decl** %3, align 8
  %12 = call i64 @REQUIRED(%struct.fn_decl* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @required_unseen_count, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* @required_unseen_count, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = load %struct.fn_decl*, %struct.fn_decl** %3, align 8
  %19 = call i32 @SET_SEEN(%struct.fn_decl* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* @special_file_handling, align 4
  switch i32 %21, label %163 [
    i32 130, label %22
    i32 129, label %33
    i32 128, label %54
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @seen_errno, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  store i32 1, i32* @seen_errno, align 4
  %30 = load i32, i32* @required_other, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* @required_other, align 4
  br label %32

32:                                               ; preds = %29, %26, %22
  br label %164

33:                                               ; preds = %20
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @seen_EXIT_FAILURE, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  store i32 1, i32* @seen_EXIT_FAILURE, align 4
  %41 = load i32, i32* @required_other, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* @required_other, align 4
  br label %43

43:                                               ; preds = %40, %37, %33
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* @seen_EXIT_SUCCESS, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  store i32 1, i32* @seen_EXIT_SUCCESS, align 4
  %51 = load i32, i32* @required_other, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* @required_other, align 4
  br label %53

53:                                               ; preds = %50, %47, %43
  br label %164

54:                                               ; preds = %20
  %55 = load i8*, i8** %2, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 83
  br i1 %59, label %60, label %162

60:                                               ; preds = %54
  %61 = load i8*, i8** %2, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 95
  br i1 %65, label %66, label %162

66:                                               ; preds = %60
  %67 = load i8*, i8** %2, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @seen_S_IFBLK, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @seen_S_IFBLK, align 4
  br label %161

73:                                               ; preds = %66
  %74 = load i8*, i8** %2, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @seen_S_ISBLK, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @seen_S_ISBLK, align 4
  br label %160

80:                                               ; preds = %73
  %81 = load i8*, i8** %2, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @seen_S_IFCHR, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @seen_S_IFCHR, align 4
  br label %159

87:                                               ; preds = %80
  %88 = load i8*, i8** %2, align 8
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* @seen_S_ISCHR, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @seen_S_ISCHR, align 4
  br label %158

94:                                               ; preds = %87
  %95 = load i8*, i8** %2, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* @seen_S_IFDIR, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* @seen_S_IFDIR, align 4
  br label %157

101:                                              ; preds = %94
  %102 = load i8*, i8** %2, align 8
  %103 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* @seen_S_ISDIR, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* @seen_S_ISDIR, align 4
  br label %156

108:                                              ; preds = %101
  %109 = load i8*, i8** %2, align 8
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @seen_S_IFIFO, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* @seen_S_IFIFO, align 4
  br label %155

115:                                              ; preds = %108
  %116 = load i8*, i8** %2, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* @seen_S_ISFIFO, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @seen_S_ISFIFO, align 4
  br label %154

122:                                              ; preds = %115
  %123 = load i8*, i8** %2, align 8
  %124 = call i32 @strcmp(i8* %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32, i32* @seen_S_IFLNK, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* @seen_S_IFLNK, align 4
  br label %153

129:                                              ; preds = %122
  %130 = load i8*, i8** %2, align 8
  %131 = call i32 @strcmp(i8* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32, i32* @seen_S_ISLNK, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* @seen_S_ISLNK, align 4
  br label %152

136:                                              ; preds = %129
  %137 = load i8*, i8** %2, align 8
  %138 = call i32 @strcmp(i8* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* @seen_S_IFREG, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* @seen_S_IFREG, align 4
  br label %151

143:                                              ; preds = %136
  %144 = load i8*, i8** %2, align 8
  %145 = call i32 @strcmp(i8* %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i32, i32* @seen_S_ISREG, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* @seen_S_ISREG, align 4
  br label %150

150:                                              ; preds = %147, %143
  br label %151

151:                                              ; preds = %150, %140
  br label %152

152:                                              ; preds = %151, %133
  br label %153

153:                                              ; preds = %152, %126
  br label %154

154:                                              ; preds = %153, %119
  br label %155

155:                                              ; preds = %154, %112
  br label %156

156:                                              ; preds = %155, %105
  br label %157

157:                                              ; preds = %156, %98
  br label %158

158:                                              ; preds = %157, %91
  br label %159

159:                                              ; preds = %158, %84
  br label %160

160:                                              ; preds = %159, %77
  br label %161

161:                                              ; preds = %160, %70
  br label %162

162:                                              ; preds = %161, %60, %54
  br label %164

163:                                              ; preds = %20
  br label %164

164:                                              ; preds = %163, %162, %53, %32
  ret void
}

declare dso_local %struct.fn_decl* @lookup_std_proto(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @REQUIRED(%struct.fn_decl*) #1

declare dso_local i32 @SET_SEEN(%struct.fn_decl*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
