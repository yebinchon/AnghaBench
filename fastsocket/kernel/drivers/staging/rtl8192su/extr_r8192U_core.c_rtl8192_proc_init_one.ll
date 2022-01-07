; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_proc_init_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_proc_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.proc_dir_entry = type { i32 }
%struct.r8192_priv = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@rtl8192_proc = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to initialize /proc/net/rtl8192/%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"stats-rx\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@proc_get_stats_rx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Unable to initialize /proc/net/rtl8192/%s/stats-rx\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"stats-tx\00", align 1
@proc_get_stats_tx = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"Unable to initialize /proc/net/rtl8192/%s/stats-tx\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"stats-ap\00", align 1
@proc_get_stats_ap = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"Unable to initialize /proc/net/rtl8192/%s/stats-ap\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@proc_get_registers = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [53 x i8] c"Unable to initialize /proc/net/rtl8192/%s/registers\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"registers-1\00", align 1
@proc_get_registers_1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [55 x i8] c"Unable to initialize /proc/net/rtl8192/%s/registers-1\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"registers-2\00", align 1
@proc_get_registers_2 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [55 x i8] c"Unable to initialize /proc/net/rtl8192/%s/registers-2\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"registers-8\00", align 1
@proc_get_registers_8 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [55 x i8] c"Unable to initialize /proc/net/rtl8192/%s/registers-8\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"registers-9\00", align 1
@proc_get_registers_9 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [55 x i8] c"Unable to initialize /proc/net/rtl8192/%s/registers-9\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"registers-a\00", align 1
@proc_get_registers_a = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [55 x i8] c"Unable to initialize /proc/net/rtl8192/%s/registers-a\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"registers-b\00", align 1
@proc_get_registers_b = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [55 x i8] c"Unable to initialize /proc/net/rtl8192/%s/registers-b\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"registers-c\00", align 1
@proc_get_registers_c = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [55 x i8] c"Unable to initialize /proc/net/rtl8192/%s/registers-c\0A\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"registers-d\00", align 1
@proc_get_registers_d = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [55 x i8] c"Unable to initialize /proc/net/rtl8192/%s/registers-d\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"registers-e\00", align 1
@proc_get_registers_e = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [55 x i8] c"Unable to initialize /proc/net/rtl8192/%s/registers-e\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_proc_init_one(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.proc_dir_entry*, align 8
  %4 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i64 @ieee80211_priv(%struct.net_device* %5)
  %7 = inttoptr i64 %6 to %struct.r8192_priv*
  store %struct.r8192_priv* %7, %struct.r8192_priv** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @S_IFDIR, align 4
  %12 = load i32, i32* @S_IRUGO, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @S_IXUGO, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @rtl8192_proc, align 4
  %17 = call i32 @create_proc_entry(i32 %10, i32 %15, i32 %16)
  %18 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %19 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @COMP_ERR, align 4
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @RT_TRACE(i32 %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %264

30:                                               ; preds = %1
  %31 = load i32, i32* @S_IFREG, align 4
  %32 = load i32, i32* @S_IRUGO, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %35 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @proc_get_stats_rx, align 4
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36, i32 %37, %struct.net_device* %38)
  store %struct.proc_dir_entry* %39, %struct.proc_dir_entry** %3, align 8
  %40 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %41 = icmp ne %struct.proc_dir_entry* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* @COMP_ERR, align 4
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @RT_TRACE(i32 %43, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %42, %30
  %49 = load i32, i32* @S_IFREG, align 4
  %50 = load i32, i32* @S_IRUGO, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %53 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @proc_get_stats_tx, align 4
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %51, i32 %54, i32 %55, %struct.net_device* %56)
  store %struct.proc_dir_entry* %57, %struct.proc_dir_entry** %3, align 8
  %58 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %59 = icmp ne %struct.proc_dir_entry* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %48
  %61 = load i32, i32* @COMP_ERR, align 4
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @RT_TRACE(i32 %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60, %48
  %67 = load i32, i32* @S_IFREG, align 4
  %68 = load i32, i32* @S_IRUGO, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %71 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @proc_get_stats_ap, align 4
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %69, i32 %72, i32 %73, %struct.net_device* %74)
  store %struct.proc_dir_entry* %75, %struct.proc_dir_entry** %3, align 8
  %76 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %77 = icmp ne %struct.proc_dir_entry* %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %66
  %79 = load i32, i32* @COMP_ERR, align 4
  %80 = load %struct.net_device*, %struct.net_device** %2, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @RT_TRACE(i32 %79, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78, %66
  %85 = load i32, i32* @S_IFREG, align 4
  %86 = load i32, i32* @S_IRUGO, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %89 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @proc_get_registers, align 4
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %87, i32 %90, i32 %91, %struct.net_device* %92)
  store %struct.proc_dir_entry* %93, %struct.proc_dir_entry** %3, align 8
  %94 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %95 = icmp ne %struct.proc_dir_entry* %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %84
  %97 = load i32, i32* @COMP_ERR, align 4
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @RT_TRACE(i32 %97, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %96, %84
  %103 = load i32, i32* @S_IFREG, align 4
  %104 = load i32, i32* @S_IRUGO, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %107 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @proc_get_registers_1, align 4
  %110 = load %struct.net_device*, %struct.net_device** %2, align 8
  %111 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %105, i32 %108, i32 %109, %struct.net_device* %110)
  store %struct.proc_dir_entry* %111, %struct.proc_dir_entry** %3, align 8
  %112 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %113 = icmp ne %struct.proc_dir_entry* %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %102
  %115 = load i32, i32* @COMP_ERR, align 4
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @RT_TRACE(i32 %115, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %114, %102
  %121 = load i32, i32* @S_IFREG, align 4
  %122 = load i32, i32* @S_IRUGO, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %125 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @proc_get_registers_2, align 4
  %128 = load %struct.net_device*, %struct.net_device** %2, align 8
  %129 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %123, i32 %126, i32 %127, %struct.net_device* %128)
  store %struct.proc_dir_entry* %129, %struct.proc_dir_entry** %3, align 8
  %130 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %131 = icmp ne %struct.proc_dir_entry* %130, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %120
  %133 = load i32, i32* @COMP_ERR, align 4
  %134 = load %struct.net_device*, %struct.net_device** %2, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @RT_TRACE(i32 %133, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %132, %120
  %139 = load i32, i32* @S_IFREG, align 4
  %140 = load i32, i32* @S_IRUGO, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %143 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @proc_get_registers_8, align 4
  %146 = load %struct.net_device*, %struct.net_device** %2, align 8
  %147 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %141, i32 %144, i32 %145, %struct.net_device* %146)
  store %struct.proc_dir_entry* %147, %struct.proc_dir_entry** %3, align 8
  %148 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %149 = icmp ne %struct.proc_dir_entry* %148, null
  br i1 %149, label %156, label %150

150:                                              ; preds = %138
  %151 = load i32, i32* @COMP_ERR, align 4
  %152 = load %struct.net_device*, %struct.net_device** %2, align 8
  %153 = getelementptr inbounds %struct.net_device, %struct.net_device* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @RT_TRACE(i32 %151, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %150, %138
  %157 = load i32, i32* @S_IFREG, align 4
  %158 = load i32, i32* @S_IRUGO, align 4
  %159 = or i32 %157, %158
  %160 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %161 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @proc_get_registers_9, align 4
  %164 = load %struct.net_device*, %struct.net_device** %2, align 8
  %165 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %159, i32 %162, i32 %163, %struct.net_device* %164)
  store %struct.proc_dir_entry* %165, %struct.proc_dir_entry** %3, align 8
  %166 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %167 = icmp ne %struct.proc_dir_entry* %166, null
  br i1 %167, label %174, label %168

168:                                              ; preds = %156
  %169 = load i32, i32* @COMP_ERR, align 4
  %170 = load %struct.net_device*, %struct.net_device** %2, align 8
  %171 = getelementptr inbounds %struct.net_device, %struct.net_device* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @RT_TRACE(i32 %169, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %168, %156
  %175 = load i32, i32* @S_IFREG, align 4
  %176 = load i32, i32* @S_IRUGO, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %179 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @proc_get_registers_a, align 4
  %182 = load %struct.net_device*, %struct.net_device** %2, align 8
  %183 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %177, i32 %180, i32 %181, %struct.net_device* %182)
  store %struct.proc_dir_entry* %183, %struct.proc_dir_entry** %3, align 8
  %184 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %185 = icmp ne %struct.proc_dir_entry* %184, null
  br i1 %185, label %192, label %186

186:                                              ; preds = %174
  %187 = load i32, i32* @COMP_ERR, align 4
  %188 = load %struct.net_device*, %struct.net_device** %2, align 8
  %189 = getelementptr inbounds %struct.net_device, %struct.net_device* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @RT_TRACE(i32 %187, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %186, %174
  %193 = load i32, i32* @S_IFREG, align 4
  %194 = load i32, i32* @S_IRUGO, align 4
  %195 = or i32 %193, %194
  %196 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %197 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @proc_get_registers_b, align 4
  %200 = load %struct.net_device*, %struct.net_device** %2, align 8
  %201 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %195, i32 %198, i32 %199, %struct.net_device* %200)
  store %struct.proc_dir_entry* %201, %struct.proc_dir_entry** %3, align 8
  %202 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %203 = icmp ne %struct.proc_dir_entry* %202, null
  br i1 %203, label %210, label %204

204:                                              ; preds = %192
  %205 = load i32, i32* @COMP_ERR, align 4
  %206 = load %struct.net_device*, %struct.net_device** %2, align 8
  %207 = getelementptr inbounds %struct.net_device, %struct.net_device* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @RT_TRACE(i32 %205, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.20, i64 0, i64 0), i32 %208)
  br label %210

210:                                              ; preds = %204, %192
  %211 = load i32, i32* @S_IFREG, align 4
  %212 = load i32, i32* @S_IRUGO, align 4
  %213 = or i32 %211, %212
  %214 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %215 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @proc_get_registers_c, align 4
  %218 = load %struct.net_device*, %struct.net_device** %2, align 8
  %219 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 %213, i32 %216, i32 %217, %struct.net_device* %218)
  store %struct.proc_dir_entry* %219, %struct.proc_dir_entry** %3, align 8
  %220 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %221 = icmp ne %struct.proc_dir_entry* %220, null
  br i1 %221, label %228, label %222

222:                                              ; preds = %210
  %223 = load i32, i32* @COMP_ERR, align 4
  %224 = load %struct.net_device*, %struct.net_device** %2, align 8
  %225 = getelementptr inbounds %struct.net_device, %struct.net_device* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @RT_TRACE(i32 %223, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i32 %226)
  br label %228

228:                                              ; preds = %222, %210
  %229 = load i32, i32* @S_IFREG, align 4
  %230 = load i32, i32* @S_IRUGO, align 4
  %231 = or i32 %229, %230
  %232 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %233 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @proc_get_registers_d, align 4
  %236 = load %struct.net_device*, %struct.net_device** %2, align 8
  %237 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 %231, i32 %234, i32 %235, %struct.net_device* %236)
  store %struct.proc_dir_entry* %237, %struct.proc_dir_entry** %3, align 8
  %238 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %239 = icmp ne %struct.proc_dir_entry* %238, null
  br i1 %239, label %246, label %240

240:                                              ; preds = %228
  %241 = load i32, i32* @COMP_ERR, align 4
  %242 = load %struct.net_device*, %struct.net_device** %2, align 8
  %243 = getelementptr inbounds %struct.net_device, %struct.net_device* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @RT_TRACE(i32 %241, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.24, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %240, %228
  %247 = load i32, i32* @S_IFREG, align 4
  %248 = load i32, i32* @S_IRUGO, align 4
  %249 = or i32 %247, %248
  %250 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %251 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @proc_get_registers_e, align 4
  %254 = load %struct.net_device*, %struct.net_device** %2, align 8
  %255 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32 %249, i32 %252, i32 %253, %struct.net_device* %254)
  store %struct.proc_dir_entry* %255, %struct.proc_dir_entry** %3, align 8
  %256 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %257 = icmp ne %struct.proc_dir_entry* %256, null
  br i1 %257, label %264, label %258

258:                                              ; preds = %246
  %259 = load i32, i32* @COMP_ERR, align 4
  %260 = load %struct.net_device*, %struct.net_device** %2, align 8
  %261 = getelementptr inbounds %struct.net_device, %struct.net_device* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @RT_TRACE(i32 %259, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.26, i64 0, i64 0), i32 %262)
  br label %264

264:                                              ; preds = %24, %258, %246
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @create_proc_entry(i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32) #1

declare dso_local %struct.proc_dir_entry* @create_proc_read_entry(i8*, i32, i32, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
