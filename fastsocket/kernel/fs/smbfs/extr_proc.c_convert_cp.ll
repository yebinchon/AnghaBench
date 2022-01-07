; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_convert_cp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_convert_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 (i8*, i32, i32*)*, i32 (i32, i8*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, %struct.nls_table*, %struct.nls_table*)* @convert_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_cp(i8* %0, i32 %1, i8* %2, i32 %3, %struct.nls_table* %4, %struct.nls_table* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nls_table*, align 8
  %13 = alloca %struct.nls_table*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.nls_table* %4, %struct.nls_table** %12, align 8
  store %struct.nls_table* %5, %struct.nls_table** %13, align 8
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %88, %44, %6
  %18 = load i32, i32* %11, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %99

20:                                               ; preds = %17
  %21 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  %22 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %21, i32 0, i32 0
  %23 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %22, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 %23(i8* %24, i32 %25, i32* %16)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %20
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %11, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %10, align 8
  %36 = load i8, i8* %34, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @write_char(i32 %37, i8* %38, i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %101

44:                                               ; preds = %31
  %45 = load i32, i32* %15, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %8, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %14, align 4
  br label %17

55:                                               ; preds = %20
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %101

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %15, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %10, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load %struct.nls_table*, %struct.nls_table** %13, align 8
  %69 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %68, i32 0, i32 1
  %70 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %69, align 8
  %71 = load i32, i32* %16, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 %70(i32 %71, i8* %72, i32 %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %60
  %80 = load i32, i32* %16, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @write_unichar(i32 %80, i8* %81, i32 %82)
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %79, %60
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %101

88:                                               ; preds = %84
  %89 = load i32, i32* %15, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %8, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %9, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %14, align 4
  br label %17

99:                                               ; preds = %17
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %7, align 4
  br label %103

101:                                              ; preds = %87, %58, %43
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @write_char(i32, i8*, i32) #1

declare dso_local i32 @write_unichar(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
