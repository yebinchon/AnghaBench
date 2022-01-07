; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_sess.c_decode_ascii_ssetup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_sess.c_decode_ascii_ssetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i8*, i32, i8* }
%struct.nls_table = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"decode sessetup ascii. bleft %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"OS/2\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"OS/2 server\00", align 1
@CIFS_SES_OS2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"ascii: bytes left %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, %struct.cifs_ses*, %struct.nls_table*)* @decode_ascii_ssetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_ascii_ssetup(i8** %0, i32 %1, %struct.cifs_ses* %2, %struct.nls_table* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_ses*, align 8
  %9 = alloca %struct.nls_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.cifs_ses* %2, %struct.cifs_ses** %8, align 8
  store %struct.nls_table* %3, %struct.nls_table** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %12, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i8*, i8** %12, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @strnlen(i8* %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %122

25:                                               ; preds = %4
  %26 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %27 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @kfree(i8* %28)
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kzalloc(i32 %31, i32 %32)
  %34 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %35 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %37 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %25
  %41 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %42 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @strncpy(i8* %43, i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %25
  %48 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %49 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strncmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @CIFS_SES_OS2, align 4
  %56 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %57 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %53, %47
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i8*, i8** %12, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %12, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i8*, i8** %12, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @strnlen(i8* %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %60
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %5, align 4
  br label %122

78:                                               ; preds = %60
  %79 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %80 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @kfree(i8* %81)
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i8* @kzalloc(i32 %84, i32 %85)
  %87 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %88 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %90 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %78
  %94 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %95 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @strncpy(i8* %96, i8* %97, i32 %98)
  br label %100

100:                                              ; preds = %93, %78
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  %103 = load i8*, i8** %12, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %12, align 8
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  %108 = load i32, i32* %7, align 4
  %109 = sub nsw i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load i8*, i8** %12, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @strnlen(i8* %110, i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %100
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %5, align 4
  br label %122

118:                                              ; preds = %100
  %119 = load i32, i32* %7, align 4
  %120 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %118, %116, %76, %23
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
