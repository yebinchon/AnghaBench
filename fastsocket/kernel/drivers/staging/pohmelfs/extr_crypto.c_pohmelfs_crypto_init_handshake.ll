; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_crypto_init_handshake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_crypto_init_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_sb = type { i32, i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.netfs_trans = type { %struct.pohmelfs_sb*, i32 }
%struct.netfs_crypto_capabilities = type { i32, i32, i32 }
%struct.netfs_cmd = type { i32, i64, i64, i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@pohmelfs_crypt_init_complete = common dso_local global i32 0, align 4
@NETFS_CAPABILITIES = common dso_local global i32 0, align 4
@POHMELFS_CRYPTO_CAPABILITIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pohmelfs_sb*)* @pohmelfs_crypto_init_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_crypto_init_handshake(%struct.pohmelfs_sb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pohmelfs_sb*, align 8
  %4 = alloca %struct.netfs_trans*, align 8
  %5 = alloca %struct.netfs_crypto_capabilities*, align 8
  %6 = alloca %struct.netfs_cmd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pohmelfs_sb* %0, %struct.pohmelfs_sb** %3, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %13 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = add i64 12, %15
  %17 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %18 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %16, %20
  %22 = add i64 %21, 2
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.netfs_trans* @netfs_trans_alloc(%struct.pohmelfs_sb* %24, i32 %25, i32 0, i32 0)
  store %struct.netfs_trans* %26, %struct.netfs_trans** %4, align 8
  %27 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %28 = icmp ne %struct.netfs_trans* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  br label %159

30:                                               ; preds = %1
  %31 = load i32, i32* @pohmelfs_crypt_init_complete, align 4
  %32 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %33 = getelementptr inbounds %struct.netfs_trans, %struct.netfs_trans* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %35 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %36 = getelementptr inbounds %struct.netfs_trans, %struct.netfs_trans* %35, i32 0, i32 0
  store %struct.pohmelfs_sb* %34, %struct.pohmelfs_sb** %36, align 8
  %37 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %38 = call %struct.netfs_cmd* @netfs_trans_current(%struct.netfs_trans* %37)
  store %struct.netfs_cmd* %38, %struct.netfs_cmd** %6, align 8
  %39 = load %struct.netfs_cmd*, %struct.netfs_cmd** %6, align 8
  %40 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %39, i64 1
  %41 = bitcast %struct.netfs_cmd* %40 to %struct.netfs_crypto_capabilities*
  store %struct.netfs_crypto_capabilities* %41, %struct.netfs_crypto_capabilities** %5, align 8
  %42 = load %struct.netfs_crypto_capabilities*, %struct.netfs_crypto_capabilities** %5, align 8
  %43 = getelementptr inbounds %struct.netfs_crypto_capabilities, %struct.netfs_crypto_capabilities* %42, i64 1
  %44 = bitcast %struct.netfs_crypto_capabilities* %43 to i8*
  store i8* %44, i8** %7, align 8
  %45 = load i32, i32* @NETFS_CAPABILITIES, align 4
  %46 = load %struct.netfs_cmd*, %struct.netfs_cmd** %6, align 8
  %47 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @POHMELFS_CRYPTO_CAPABILITIES, align 4
  %49 = load %struct.netfs_cmd*, %struct.netfs_cmd** %6, align 8
  %50 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.netfs_cmd*, %struct.netfs_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.netfs_cmd*, %struct.netfs_cmd** %6, align 8
  %55 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.netfs_cmd*, %struct.netfs_cmd** %6, align 8
  %57 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.netfs_cmd*, %struct.netfs_cmd** %6, align 8
  %59 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.netfs_cmd*, %struct.netfs_cmd** %6, align 8
  %61 = call i32 @netfs_convert_cmd(%struct.netfs_cmd* %60)
  %62 = load %struct.netfs_cmd*, %struct.netfs_cmd** %6, align 8
  %63 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @netfs_trans_update(%struct.netfs_cmd* %62, %struct.netfs_trans* %63, i32 %64)
  %66 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %67 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.netfs_crypto_capabilities*, %struct.netfs_crypto_capabilities** %5, align 8
  %70 = getelementptr inbounds %struct.netfs_crypto_capabilities, %struct.netfs_crypto_capabilities* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.netfs_crypto_capabilities*, %struct.netfs_crypto_capabilities** %5, align 8
  %72 = getelementptr inbounds %struct.netfs_crypto_capabilities, %struct.netfs_crypto_capabilities* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %30
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %78 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @sprintf(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %79)
  %81 = load %struct.netfs_crypto_capabilities*, %struct.netfs_crypto_capabilities** %5, align 8
  %82 = getelementptr inbounds %struct.netfs_crypto_capabilities, %struct.netfs_crypto_capabilities* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %7, align 8
  br label %87

87:                                               ; preds = %75, %30
  %88 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %89 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.netfs_crypto_capabilities*, %struct.netfs_crypto_capabilities** %5, align 8
  %92 = getelementptr inbounds %struct.netfs_crypto_capabilities, %struct.netfs_crypto_capabilities* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %94 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.netfs_crypto_capabilities*, %struct.netfs_crypto_capabilities** %5, align 8
  %97 = getelementptr inbounds %struct.netfs_crypto_capabilities, %struct.netfs_crypto_capabilities* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.netfs_crypto_capabilities*, %struct.netfs_crypto_capabilities** %5, align 8
  %99 = getelementptr inbounds %struct.netfs_crypto_capabilities, %struct.netfs_crypto_capabilities* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %87
  %103 = load i8*, i8** %7, align 8
  %104 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %105 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @sprintf(i8* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %102, %87
  %109 = load %struct.netfs_crypto_capabilities*, %struct.netfs_crypto_capabilities** %5, align 8
  %110 = call i32 @netfs_convert_crypto_capabilities(%struct.netfs_crypto_capabilities* %109)
  %111 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %112 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %111, i32 0, i32 4
  store i32 -1, i32* %112, align 8
  %113 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %114 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %115 = call i32 @netfs_trans_finish(%struct.netfs_trans* %113, %struct.pohmelfs_sb* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  br label %159

119:                                              ; preds = %108
  %120 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %121 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %124 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, -1
  %127 = zext i1 %126 to i32
  %128 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %129 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @wait_event_interruptible_timeout(i32 %122, i32 %127, i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %119
  %135 = load i32, i32* @ETIMEDOUT, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %8, align 4
  br label %146

137:                                              ; preds = %119
  %138 = load i32, i32* %8, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %142 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %140, %137
  br label %146

146:                                              ; preds = %145, %134
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %151 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %150, i32 0, i32 5
  store i32 1, i32* %151, align 4
  br label %152

152:                                              ; preds = %149, %146
  %153 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %154 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %153, i32 0, i32 4
  store i32 0, i32* %154, align 8
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %159

158:                                              ; preds = %152
  store i32 0, i32* %2, align 4
  br label %161

159:                                              ; preds = %157, %118, %29
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %159, %158
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.netfs_trans* @netfs_trans_alloc(%struct.pohmelfs_sb*, i32, i32, i32) #1

declare dso_local %struct.netfs_cmd* @netfs_trans_current(%struct.netfs_trans*) #1

declare dso_local i32 @netfs_convert_cmd(%struct.netfs_cmd*) #1

declare dso_local i32 @netfs_trans_update(%struct.netfs_cmd*, %struct.netfs_trans*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @netfs_convert_crypto_capabilities(%struct.netfs_crypto_capabilities*) #1

declare dso_local i32 @netfs_trans_finish(%struct.netfs_trans*, %struct.pohmelfs_sb*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
