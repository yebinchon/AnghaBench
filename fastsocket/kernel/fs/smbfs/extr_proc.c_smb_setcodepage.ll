; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_setcodepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_setcodepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.smb_nls_codepage = type { i32*, i32* }

@.str = private unnamed_addr constant [8 x i8] c"unicode\00", align 1
@unicode_table = common dso_local global i32 0, align 4
@convert_cp = common dso_local global i32 0, align 4
@convert_memcpy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_setcodepage(%struct.smb_sb_info* %0, %struct.smb_nls_codepage* %1) #0 {
  %3 = alloca %struct.smb_sb_info*, align 8
  %4 = alloca %struct.smb_nls_codepage*, align 8
  %5 = alloca i32, align 4
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %3, align 8
  store %struct.smb_nls_codepage* %1, %struct.smb_nls_codepage** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %7 = call i32 @smb_lock_server(%struct.smb_sb_info* %6)
  %8 = load %struct.smb_nls_codepage*, %struct.smb_nls_codepage** %4, align 8
  %9 = getelementptr inbounds %struct.smb_nls_codepage, %struct.smb_nls_codepage* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %48

14:                                               ; preds = %2
  %15 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %16 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %15, i32 0, i32 2
  %17 = load %struct.smb_nls_codepage*, %struct.smb_nls_codepage** %4, align 8
  %18 = getelementptr inbounds %struct.smb_nls_codepage, %struct.smb_nls_codepage* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @setcodepage(i32** %16, i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %48

24:                                               ; preds = %14
  %25 = load %struct.smb_nls_codepage*, %struct.smb_nls_codepage** %4, align 8
  %26 = getelementptr inbounds %struct.smb_nls_codepage, %struct.smb_nls_codepage* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @strcmp(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %32 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %31, i32 0, i32 1
  store i32* @unicode_table, i32** %32, align 8
  br label %47

33:                                               ; preds = %24
  %34 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %35 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %34, i32 0, i32 1
  %36 = load %struct.smb_nls_codepage*, %struct.smb_nls_codepage** %4, align 8
  %37 = getelementptr inbounds %struct.smb_nls_codepage, %struct.smb_nls_codepage* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @setcodepage(i32** %35, i32* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %44 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %43, i32 0, i32 2
  %45 = call i32 @setcodepage(i32** %44, i32* null)
  br label %46

46:                                               ; preds = %42, %33
  br label %47

47:                                               ; preds = %46, %30
  br label %48

48:                                               ; preds = %47, %23, %13
  %49 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %50 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %55 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @convert_cp, align 4
  %60 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %61 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  br label %70

64:                                               ; preds = %53, %48
  %65 = load i32, i32* @convert_memcpy, align 4
  %66 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %67 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %72 = call i32 @smb_unlock_server(%struct.smb_sb_info* %71)
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @smb_lock_server(%struct.smb_sb_info*) #1

declare dso_local i32 @setcodepage(i32**, i32*) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @smb_unlock_server(%struct.smb_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
