; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsencrypt.c_build_avpair_blob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsencrypt.c_build_avpair_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i8* }
%struct.nls_table = type { i32 }
%struct.ntlmssp2_name = type { i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"WORKGROUP\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Challenge target info allocation failure\00", align 1
@NTLMSSP_AV_NB_DOMAIN_NAME = common dso_local global i32 0, align 4
@NTLMSSP_AV_NB_COMPUTER_NAME = common dso_local global i32 0, align 4
@NTLMSSP_AV_DNS_DOMAIN_NAME = common dso_local global i32 0, align 4
@NTLMSSP_AV_DNS_COMPUTER_NAME = common dso_local global i32 0, align 4
@NTLMSSP_AV_TIMESTAMP = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_ses*, %struct.nls_table*)* @build_avpair_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_avpair_blob(%struct.cifs_ses* %0, %struct.nls_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifs_ses*, align 8
  %5 = alloca %struct.nls_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ntlmssp2_name*, align 8
  store %struct.cifs_ses* %0, %struct.cifs_ses** %4, align 8
  store %struct.nls_table* %1, %struct.nls_table** %5, align 8
  store i32 96, i32* %8, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %13 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %14 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** %10, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @kstrdup(i8* %18, i32 %19)
  %21 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %22 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %24 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %210

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %33 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @strlen(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %37 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strlen(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = mul i32 2, %43
  %45 = mul i32 2, %44
  %46 = add i32 %42, %45
  %47 = load i32, i32* %7, align 4
  %48 = mul i32 2, %47
  %49 = mul i32 2, %48
  %50 = add i32 %46, %49
  %51 = add i32 %50, 8
  %52 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %53 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %56 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @kzalloc(i32 %58, i32 %59)
  %61 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %62 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i8* %60, i8** %63, align 8
  %64 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %65 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %31
  %70 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %71 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %210

76:                                               ; preds = %31
  %77 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %78 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %11, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = bitcast i8* %81 to %struct.ntlmssp2_name*
  store %struct.ntlmssp2_name* %82, %struct.ntlmssp2_name** %12, align 8
  %83 = load i32, i32* @NTLMSSP_AV_NB_DOMAIN_NAME, align 4
  %84 = call i8* @cpu_to_le16(i32 %83)
  %85 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %12, align 8
  %86 = getelementptr inbounds %struct.ntlmssp2_name, %struct.ntlmssp2_name* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %6, align 4
  %88 = mul i32 2, %87
  %89 = call i8* @cpu_to_le16(i32 %88)
  %90 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %12, align 8
  %91 = getelementptr inbounds %struct.ntlmssp2_name, %struct.ntlmssp2_name* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %12, align 8
  %93 = bitcast %struct.ntlmssp2_name* %92 to i8*
  %94 = getelementptr inbounds i8, i8* %93, i64 16
  store i8* %94, i8** %11, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = bitcast i8* %95 to i32*
  %97 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %98 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.nls_table*, %struct.nls_table** %5, align 8
  %102 = call i32 @cifs_strtoUCS(i32* %96, i32 %99, i32 %100, %struct.nls_table* %101)
  %103 = load i32, i32* %6, align 4
  %104 = mul i32 2, %103
  %105 = load i8*, i8** %11, align 8
  %106 = zext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %11, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = bitcast i8* %108 to %struct.ntlmssp2_name*
  store %struct.ntlmssp2_name* %109, %struct.ntlmssp2_name** %12, align 8
  %110 = load i32, i32* @NTLMSSP_AV_NB_COMPUTER_NAME, align 4
  %111 = call i8* @cpu_to_le16(i32 %110)
  %112 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %12, align 8
  %113 = getelementptr inbounds %struct.ntlmssp2_name, %struct.ntlmssp2_name* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* %7, align 4
  %115 = mul i32 2, %114
  %116 = call i8* @cpu_to_le16(i32 %115)
  %117 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %12, align 8
  %118 = getelementptr inbounds %struct.ntlmssp2_name, %struct.ntlmssp2_name* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %12, align 8
  %120 = bitcast %struct.ntlmssp2_name* %119 to i8*
  %121 = getelementptr inbounds i8, i8* %120, i64 16
  store i8* %121, i8** %11, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = bitcast i8* %122 to i32*
  %124 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %125 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.nls_table*, %struct.nls_table** %5, align 8
  %131 = call i32 @cifs_strtoUCS(i32* %123, i32 %128, i32 %129, %struct.nls_table* %130)
  %132 = load i32, i32* %7, align 4
  %133 = mul i32 2, %132
  %134 = load i8*, i8** %11, align 8
  %135 = zext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %11, align 8
  %137 = load i8*, i8** %11, align 8
  %138 = bitcast i8* %137 to %struct.ntlmssp2_name*
  store %struct.ntlmssp2_name* %138, %struct.ntlmssp2_name** %12, align 8
  %139 = load i32, i32* @NTLMSSP_AV_DNS_DOMAIN_NAME, align 4
  %140 = call i8* @cpu_to_le16(i32 %139)
  %141 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %12, align 8
  %142 = getelementptr inbounds %struct.ntlmssp2_name, %struct.ntlmssp2_name* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load i32, i32* %6, align 4
  %144 = mul i32 2, %143
  %145 = call i8* @cpu_to_le16(i32 %144)
  %146 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %12, align 8
  %147 = getelementptr inbounds %struct.ntlmssp2_name, %struct.ntlmssp2_name* %146, i32 0, i32 0
  store i8* %145, i8** %147, align 8
  %148 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %12, align 8
  %149 = bitcast %struct.ntlmssp2_name* %148 to i8*
  %150 = getelementptr inbounds i8, i8* %149, i64 16
  store i8* %150, i8** %11, align 8
  %151 = load i8*, i8** %11, align 8
  %152 = bitcast i8* %151 to i32*
  %153 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %154 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load %struct.nls_table*, %struct.nls_table** %5, align 8
  %158 = call i32 @cifs_strtoUCS(i32* %152, i32 %155, i32 %156, %struct.nls_table* %157)
  %159 = load i32, i32* %6, align 4
  %160 = mul i32 2, %159
  %161 = load i8*, i8** %11, align 8
  %162 = zext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %11, align 8
  %164 = load i8*, i8** %11, align 8
  %165 = bitcast i8* %164 to %struct.ntlmssp2_name*
  store %struct.ntlmssp2_name* %165, %struct.ntlmssp2_name** %12, align 8
  %166 = load i32, i32* @NTLMSSP_AV_DNS_COMPUTER_NAME, align 4
  %167 = call i8* @cpu_to_le16(i32 %166)
  %168 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %12, align 8
  %169 = getelementptr inbounds %struct.ntlmssp2_name, %struct.ntlmssp2_name* %168, i32 0, i32 1
  store i8* %167, i8** %169, align 8
  %170 = load i32, i32* %7, align 4
  %171 = mul i32 2, %170
  %172 = call i8* @cpu_to_le16(i32 %171)
  %173 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %12, align 8
  %174 = getelementptr inbounds %struct.ntlmssp2_name, %struct.ntlmssp2_name* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  %175 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %12, align 8
  %176 = bitcast %struct.ntlmssp2_name* %175 to i8*
  %177 = getelementptr inbounds i8, i8* %176, i64 16
  store i8* %177, i8** %11, align 8
  %178 = load i8*, i8** %11, align 8
  %179 = bitcast i8* %178 to i32*
  %180 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %181 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %180, i32 0, i32 0
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %7, align 4
  %186 = load %struct.nls_table*, %struct.nls_table** %5, align 8
  %187 = call i32 @cifs_strtoUCS(i32* %179, i32 %184, i32 %185, %struct.nls_table* %186)
  %188 = load i32, i32* %7, align 4
  %189 = mul i32 2, %188
  %190 = load i8*, i8** %11, align 8
  %191 = zext i32 %189 to i64
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  store i8* %192, i8** %11, align 8
  %193 = load i8*, i8** %11, align 8
  %194 = bitcast i8* %193 to %struct.ntlmssp2_name*
  store %struct.ntlmssp2_name* %194, %struct.ntlmssp2_name** %12, align 8
  %195 = load i32, i32* @NTLMSSP_AV_TIMESTAMP, align 4
  %196 = call i8* @cpu_to_le16(i32 %195)
  %197 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %12, align 8
  %198 = getelementptr inbounds %struct.ntlmssp2_name, %struct.ntlmssp2_name* %197, i32 0, i32 1
  store i8* %196, i8** %198, align 8
  %199 = call i8* @cpu_to_le16(i32 4)
  %200 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %12, align 8
  %201 = getelementptr inbounds %struct.ntlmssp2_name, %struct.ntlmssp2_name* %200, i32 0, i32 0
  store i8* %199, i8** %201, align 8
  %202 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %12, align 8
  %203 = bitcast %struct.ntlmssp2_name* %202 to i8*
  %204 = getelementptr inbounds i8, i8* %203, i64 16
  store i8* %204, i8** %11, align 8
  %205 = load i32, i32* @CURRENT_TIME, align 4
  %206 = call i32 @cifs_UnixTimeToNT(i32 %205)
  %207 = call i32 @cpu_to_le64(i32 %206)
  store i32 %207, i32* %9, align 4
  %208 = load i8*, i8** %11, align 8
  %209 = call i32 @memcpy(i8* %208, i32* %9, i32 4)
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %76, %69, %27
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @cERROR(i32, i8*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cifs_strtoUCS(i32*, i32, i32, %struct.nls_table*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cifs_UnixTimeToNT(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
