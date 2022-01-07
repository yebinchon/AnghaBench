; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_match_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_match_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.smb_vol = type { i8*, i8*, i32 }

@MAX_USERNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MAX_PASSWORD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_ses*, %struct.smb_vol*)* @match_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_session(%struct.cifs_ses* %0, %struct.smb_vol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifs_ses*, align 8
  %5 = alloca %struct.smb_vol*, align 8
  store %struct.cifs_ses* %0, %struct.cifs_ses** %4, align 8
  store %struct.smb_vol* %1, %struct.smb_vol** %5, align 8
  %6 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %7 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %21 [
    i32 128, label %11
  ]

11:                                               ; preds = %2
  %12 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %13 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %16 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %70

20:                                               ; preds = %11
  br label %69

21:                                               ; preds = %2
  %22 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %23 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %70

27:                                               ; preds = %21
  %28 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %29 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %32 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @MAX_USERNAME_SIZE, align 4
  %35 = call i32 @strncmp(i32* %30, i8* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %70

38:                                               ; preds = %27
  %39 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %40 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %38
  %45 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %46 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %68

49:                                               ; preds = %44
  %50 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %51 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %54 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %59 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  br label %62

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi i8* [ %60, %57 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %61 ]
  %64 = load i32, i32* @MAX_PASSWORD_SIZE, align 4
  %65 = call i32 @strncmp(i32* %52, i8* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %70

68:                                               ; preds = %62, %44, %38
  br label %69

69:                                               ; preds = %68, %20
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %67, %37, %26, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
