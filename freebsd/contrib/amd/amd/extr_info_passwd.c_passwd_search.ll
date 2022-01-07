; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_passwd.c_passwd_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_passwd.c_passwd_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [10 x i8] c"/defaults\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"type:=nfs\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [86 x i8] c"type:=nfs;rfs:=/${var0}/${var1};rhost:=${var1};sublink:=${var2};fs:=${autodir}${var3}\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"var0:=%s;var1:=%s;var2:=%s;var3:=%s;%s\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"passwd_search: map=%s key=%s -> %s\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @passwd_search(i32* %0, i8* %1, i8* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.passwd*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* null, i8** %12, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i64 @STREQ(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = call i8* @xstrdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i8**, i8*** %10, align 8
  store i8* %25, i8** %26, align 8
  store i32 0, i32* %6, align 4
  br label %141

27:                                               ; preds = %5
  %28 = load i8*, i8** %9, align 8
  %29 = call %struct.passwd* @getpwnam(i8* %28)
  store %struct.passwd* %29, %struct.passwd** %13, align 8
  %30 = load %struct.passwd*, %struct.passwd** %13, align 8
  %31 = icmp ne %struct.passwd* %30, null
  br i1 %31, label %32, label %136

32:                                               ; preds = %27
  %33 = load i32, i32* @MAXPATHLEN, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %17, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %18, align 8
  %37 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %19, align 8
  %40 = load %struct.passwd*, %struct.passwd** %13, align 8
  %41 = getelementptr inbounds %struct.passwd, %struct.passwd* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @xstrdup(i8* %42)
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i8* @strrchr(i8* %44, i8 signext 47)
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %32
  store i32 2, i32* %20, align 4
  br label %133

49:                                               ; preds = %32
  %50 = load i8*, i8** %14, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %14, align 8
  store i8 0, i8* %50, align 1
  %52 = load i8*, i8** %12, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = call i8* @strchr(i8* %53, i8 signext 47)
  store i8* %54, i8** %15, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  store i32 2, i32* %20, align 4
  br label %133

58:                                               ; preds = %49
  %59 = load i8*, i8** %15, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %15, align 8
  store i8 0, i8* %59, align 1
  %61 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 0, i8* %61, align 16
  br label %62

62:                                               ; preds = %80, %58
  %63 = load i8*, i8** %15, align 8
  %64 = call i8* @strrchr(i8* %63, i8 signext 47)
  store i8* %64, i8** %16, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load i8*, i8** %16, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = trunc i64 %38 to i32
  %71 = call i32 @xstrlcat(i8* %39, i8* %69, i32 %70)
  %72 = trunc i64 %38 to i32
  %73 = call i32 @xstrlcat(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i8*, i8** %16, align 8
  store i8 0, i8* %74, align 1
  br label %79

75:                                               ; preds = %62
  %76 = load i8*, i8** %15, align 8
  %77 = trunc i64 %38 to i32
  %78 = call i32 @xstrlcat(i8* %39, i8* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %67
  br label %80

80:                                               ; preds = %79
  %81 = load i8*, i8** %16, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %62, label %83

83:                                               ; preds = %80
  %84 = load i8, i8* %39, align 16
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %83
  %88 = load i8*, i8** %14, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load i8*, i8** %12, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92, %87, %83
  store i32 2, i32* %20, align 4
  br label %133

98:                                               ; preds = %92
  %99 = call i8* @strchr(i8* %39, i8 signext 46)
  store i8* %99, i8** %16, align 8
  %100 = load i8*, i8** %16, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i8*, i8** %16, align 8
  store i8 0, i8* %103, align 1
  br label %104

104:                                              ; preds = %102, %98
  %105 = load i8*, i8** %8, align 8
  %106 = call i8* @strchr(i8* %105, i8 signext 58)
  store i8* %106, i8** %15, align 8
  %107 = load i8*, i8** %15, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i8*, i8** %15, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %15, align 8
  br label %113

112:                                              ; preds = %104
  store i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  br label %113

113:                                              ; preds = %112, %109
  %114 = trunc i64 %34 to i32
  %115 = load i8*, i8** %12, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = load i8*, i8** %14, align 8
  %118 = load %struct.passwd*, %struct.passwd** %13, align 8
  %119 = getelementptr inbounds %struct.passwd, %struct.passwd* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** %15, align 8
  %122 = call i32 @xsnprintf(i8* %36, i32 %114, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %116, i8* %39, i8* %117, i8* %120, i8* %121)
  %123 = load i8*, i8** %8, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = call i32 @dlog(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %123, i8* %124, i8* %36)
  %126 = load i8*, i8** %16, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %113
  %129 = load i8*, i8** %16, align 8
  store i8 46, i8* %129, align 1
  br label %130

130:                                              ; preds = %128, %113
  %131 = call i8* @xstrdup(i8* %36)
  %132 = load i8**, i8*** %10, align 8
  store i8* %131, i8** %132, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %133

133:                                              ; preds = %97, %57, %48, %130
  %134 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %20, align 4
  switch i32 %135, label %143 [
    i32 1, label %141
    i32 2, label %137
  ]

136:                                              ; preds = %27
  br label %137

137:                                              ; preds = %136, %133
  %138 = load i8*, i8** %12, align 8
  %139 = call i32 @XFREE(i8* %138)
  %140 = load i32, i32* @ENOENT, align 4
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %137, %133, %24
  %142 = load i32, i32* %6, align 4
  ret i32 %142

143:                                              ; preds = %133
  unreachable
}

declare dso_local i64 @STREQ(i8*, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @xstrlcat(i8*, i8*, i32) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @dlog(i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @XFREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
