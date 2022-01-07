; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_keystore.c_write_tag_66_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_keystore.c_write_tag_66_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_crypt_stat = type { i32, i8* }

@ECRYPTFS_SIG_SIZE_HEX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unable to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ECRYPTFS_TAG_66_PACKET_TYPE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Error generating tag 66 packet header; cannot generate packet length\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8, %struct.ecryptfs_crypt_stat*, i8**, i64*)* @write_tag_66_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_tag_66_packet(i8* %0, i8 signext %1, %struct.ecryptfs_crypt_stat* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.ecryptfs_crypt_stat*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8 %1, i8* %7, align 1
  store %struct.ecryptfs_crypt_stat* %2, %struct.ecryptfs_crypt_stat** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i64* %4, i64** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %14, align 8
  %18 = load i32, i32* @ECRYPTFS_SIG_SIZE_HEX, align 4
  %19 = add nsw i32 5, %18
  %20 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %8, align 8
  %21 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %19, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kmalloc(i64 %25, i32 %26)
  %28 = load i8**, i8*** %9, align 8
  store i8* %27, i8** %28, align 8
  %29 = load i8**, i8*** %9, align 8
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %16, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %5
  %34 = load i32, i32* @KERN_ERR, align 4
  %35 = call i32 @ecryptfs_printk(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %17, align 4
  br label %144

38:                                               ; preds = %5
  %39 = load i8, i8* @ECRYPTFS_TAG_66_PACKET_TYPE, align 1
  %40 = load i8*, i8** %16, align 8
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %11, align 8
  %43 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 %39, i8* %43, align 1
  %44 = load i8*, i8** %16, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i32, i32* @ECRYPTFS_SIG_SIZE_HEX, align 4
  %48 = call i32 @ecryptfs_write_packet_length(i8* %46, i32 %47, i64* %15)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load i32, i32* @KERN_ERR, align 4
  %53 = call i32 @ecryptfs_printk(i32 %52, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %144

54:                                               ; preds = %38
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* %11, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %11, align 8
  %58 = load i8*, i8** %16, align 8
  %59 = load i64, i64* %11, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* @ECRYPTFS_SIG_SIZE_HEX, align 4
  %63 = call i32 @memcpy(i8* %60, i8* %61, i32 %62)
  %64 = load i32, i32* @ECRYPTFS_SIG_SIZE_HEX, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %11, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %8, align 8
  %72 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 3
  %75 = call i32 @ecryptfs_write_packet_length(i8* %70, i32 %74, i64* %15)
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %54
  %79 = load i32, i32* @KERN_ERR, align 4
  %80 = call i32 @ecryptfs_printk(i32 %79, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %144

81:                                               ; preds = %54
  %82 = load i64, i64* %15, align 8
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %11, align 8
  %85 = load i8, i8* %7, align 1
  %86 = load i8*, i8** %16, align 8
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %11, align 8
  %89 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8 %85, i8* %89, align 1
  %90 = load i8*, i8** %16, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %8, align 8
  %94 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %8, align 8
  %97 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @memcpy(i8* %92, i8* %95, i32 %98)
  %100 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %8, align 8
  %101 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %11, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %106

106:                                              ; preds = %123, %81
  %107 = load i64, i64* %12, align 8
  %108 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %8, align 8
  %109 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = icmp ult i64 %107, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %106
  %114 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %8, align 8
  %115 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load i64, i64* %12, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i64
  %121 = load i64, i64* %14, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %14, align 8
  br label %123

123:                                              ; preds = %113
  %124 = load i64, i64* %12, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %12, align 8
  br label %106

126:                                              ; preds = %106
  %127 = load i64, i64* %14, align 8
  %128 = udiv i64 %127, 256
  %129 = urem i64 %128, 256
  %130 = trunc i64 %129 to i8
  %131 = load i8*, i8** %16, align 8
  %132 = load i64, i64* %11, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %11, align 8
  %134 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8 %130, i8* %134, align 1
  %135 = load i64, i64* %14, align 8
  %136 = urem i64 %135, 256
  %137 = trunc i64 %136 to i8
  %138 = load i8*, i8** %16, align 8
  %139 = load i64, i64* %11, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %11, align 8
  %141 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8 %137, i8* %141, align 1
  %142 = load i64, i64* %11, align 8
  %143 = load i64*, i64** %10, align 8
  store i64 %142, i64* %143, align 8
  br label %144

144:                                              ; preds = %126, %78, %51, %33
  %145 = load i32, i32* %17, align 4
  ret i32 %145
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @ecryptfs_printk(i32, i8*) #1

declare dso_local i32 @ecryptfs_write_packet_length(i8*, i32, i64*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
