; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_sess.c_ascii_ssetup_strings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_sess.c_ascii_ssetup_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32*, i32* }
%struct.nls_table = type { i32 }
%struct.TYPE_2__ = type { i8* }

@MAX_USERNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Linux version \00", align 1
@CIFS_NETWORK_OPSYS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.cifs_ses*, %struct.nls_table*)* @ascii_ssetup_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ascii_ssetup_strings(i8** %0, %struct.cifs_ses* %1, %struct.nls_table* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca %struct.cifs_ses*, align 8
  %6 = alloca %struct.nls_table*, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.cifs_ses* %1, %struct.cifs_ses** %5, align 8
  store %struct.nls_table* %2, %struct.nls_table** %6, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %7, align 8
  %10 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %11 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %17 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @MAX_USERNAME_SIZE, align 4
  %20 = call i32 @strncpy(i8* %15, i32* %18, i32 %19)
  br label %21

21:                                               ; preds = %14, %3
  %22 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %23 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @MAX_USERNAME_SIZE, align 4
  %26 = call i32 @strnlen(i32* %24, i32 %25)
  %27 = load i8*, i8** %7, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %7, align 8
  %33 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %34 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %21
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %40 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @strncpy(i8* %38, i32* %41, i32 256)
  %43 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %44 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @strnlen(i32* %45, i32 256)
  %47 = load i8*, i8** %7, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %7, align 8
  br label %50

50:                                               ; preds = %37, %21
  %51 = load i8*, i8** %7, align 8
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @strcpy(i8* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %56 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 %56
  store i8* %58, i8** %7, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call %struct.TYPE_2__* (...) @init_utsname()
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strcpy(i8* %59, i8* %62)
  %64 = call %struct.TYPE_2__* (...) @init_utsname()
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strlen(i8* %66)
  %68 = add nsw i64 %67, 1
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 %68
  store i8* %70, i8** %7, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i8*, i8** @CIFS_NETWORK_OPSYS, align 8
  %73 = call i32 @strcpy(i8* %71, i8* %72)
  %74 = load i8*, i8** @CIFS_NETWORK_OPSYS, align 8
  %75 = call i64 @strlen(i8* %74)
  %76 = add nsw i64 %75, 1
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  store i8* %78, i8** %7, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i8**, i8*** %4, align 8
  store i8* %79, i8** %80, align 8
  ret void
}

declare dso_local i32 @strncpy(i8*, i32*, i32) #1

declare dso_local i32 @strnlen(i32*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_2__* @init_utsname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
