; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsencrypt.c_find_domain_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsencrypt.c_find_domain_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }
%struct.nls_table = type { i32 }
%struct.ntlmssp2_name = type { i32, i32 }

@NTLMSSP_AV_EOL = common dso_local global i32 0, align 4
@NTLMSSP_AV_NB_DOMAIN_NAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_ses*, %struct.nls_table*)* @find_domain_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_domain_name(%struct.cifs_ses* %0, %struct.nls_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifs_ses*, align 8
  %5 = alloca %struct.nls_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ntlmssp2_name*, align 8
  store %struct.cifs_ses* %0, %struct.cifs_ses** %4, align 8
  store %struct.nls_table* %1, %struct.nls_table** %5, align 8
  store i32 8, i32* %8, align 4
  %12 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %13 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %19 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %114

24:                                               ; preds = %17
  %25 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %26 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %31 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %29, i64 %34
  store i8* %35, i8** %10, align 8
  br label %36

36:                                               ; preds = %108, %24
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %113

43:                                               ; preds = %36
  %44 = load i8*, i8** %9, align 8
  %45 = bitcast i8* %44 to %struct.ntlmssp2_name*
  store %struct.ntlmssp2_name* %45, %struct.ntlmssp2_name** %11, align 8
  %46 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %11, align 8
  %47 = getelementptr inbounds %struct.ntlmssp2_name, %struct.ntlmssp2_name* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @NTLMSSP_AV_EOL, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %113

54:                                               ; preds = %43
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  store i8* %56, i8** %9, align 8
  %57 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %11, align 8
  %58 = getelementptr inbounds %struct.ntlmssp2_name, %struct.ntlmssp2_name* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le16_to_cpu(i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ugt i8* %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  br label %113

70:                                               ; preds = %54
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @NTLMSSP_AV_NB_DOMAIN_NAME, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %108

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  br label %113

78:                                               ; preds = %74
  %79 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %80 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %107, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %6, align 4
  %85 = add i32 %84, 1
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i64 @kmalloc(i32 %85, i32 %86)
  %88 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %89 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %91 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %83
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %114

97:                                               ; preds = %83
  %98 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %99 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.nls_table*, %struct.nls_table** %5, align 8
  %106 = call i32 @cifs_from_ucs2(i64 %100, i32* %102, i32 %103, i32 %104, %struct.nls_table* %105, i32 0)
  br label %113

107:                                              ; preds = %78
  br label %108

108:                                              ; preds = %107, %70
  %109 = load i32, i32* %6, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = zext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %9, align 8
  br label %36

113:                                              ; preds = %97, %77, %69, %53, %36
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %94, %23
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @cifs_from_ucs2(i64, i32*, i32, i32, %struct.nls_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
