; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_open_ubi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_open_ubi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubi_volume_desc* (i8*, i32)* @open_ubi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubi_volume_desc* @open_ubi(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.ubi_volume_desc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 117
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 98
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 105
  br i1 %25, label %26, label %30

26:                                               ; preds = %20, %14, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %28)
  store %struct.ubi_volume_desc* %29, %struct.ubi_volume_desc** %3, align 8
  br label %129

30:                                               ; preds = %20
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 58
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 33
  br i1 %41, label %42, label %53

42:                                               ; preds = %36, %30
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 4
  %51 = load i32, i32* %5, align 4
  %52 = call %struct.ubi_volume_desc* @ubi_open_volume_nm(i32 0, i8* %50, i32 %51)
  store %struct.ubi_volume_desc* %52, %struct.ubi_volume_desc** %3, align 8
  br label %129

53:                                               ; preds = %42, %36
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 3
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @isdigit(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %61)
  store %struct.ubi_volume_desc* %62, %struct.ubi_volume_desc** %3, align 8
  br label %129

63:                                               ; preds = %53
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  %66 = call i32 @simple_strtoul(i8* %65, i8** %8, i32 0)
  store i32 %66, i32* %6, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call %struct.ubi_volume_desc* @ubi_open_volume(i32 0, i32 %72, i32 %73)
  store %struct.ubi_volume_desc* %74, %struct.ubi_volume_desc** %3, align 8
  br label %129

75:                                               ; preds = %63
  %76 = load i8*, i8** %8, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 95
  br i1 %79, label %80, label %103

80:                                               ; preds = %75
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = call i64 @isdigit(i8 signext %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %80
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = call i32 @simple_strtoul(i8* %88, i8** %8, i32 0)
  store i32 %89, i32* %7, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  %97 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %96)
  store %struct.ubi_volume_desc* %97, %struct.ubi_volume_desc** %3, align 8
  br label %129

98:                                               ; preds = %86
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call %struct.ubi_volume_desc* @ubi_open_volume(i32 %99, i32 %100, i32 %101)
  store %struct.ubi_volume_desc* %102, %struct.ubi_volume_desc** %3, align 8
  br label %129

103:                                              ; preds = %80, %75
  %104 = load i8*, i8** %8, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 58
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load i8*, i8** %8, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 33
  br i1 %112, label %113, label %125

113:                                              ; preds = %108, %103
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load i32, i32* %6, align 4
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %8, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call %struct.ubi_volume_desc* @ubi_open_volume_nm(i32 %120, i8* %122, i32 %123)
  store %struct.ubi_volume_desc* %124, %struct.ubi_volume_desc** %3, align 8
  br label %129

125:                                              ; preds = %113, %108
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  %128 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %127)
  store %struct.ubi_volume_desc* %128, %struct.ubi_volume_desc** %3, align 8
  br label %129

129:                                              ; preds = %125, %119, %98, %94, %71, %59, %48, %26
  %130 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %3, align 8
  ret %struct.ubi_volume_desc* %130
}

declare dso_local %struct.ubi_volume_desc* @ERR_PTR(i32) #1

declare dso_local %struct.ubi_volume_desc* @ubi_open_volume_nm(i32, i8*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local %struct.ubi_volume_desc* @ubi_open_volume(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
