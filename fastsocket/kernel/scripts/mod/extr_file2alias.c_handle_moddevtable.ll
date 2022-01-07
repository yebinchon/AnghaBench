; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_handle_moddevtable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_handle_moddevtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.elf_info = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@SHT_NOBITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"__mod_pci_device_table\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@do_pci_entry = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"__mod_usb_device_table\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"__mod_hid_device_table\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"hid\00", align 1
@do_hid_entry = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"__mod_ieee1394_device_table\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"ieee1394\00", align 1
@do_ieee1394_entry = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"__mod_ccw_device_table\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ccw\00", align 1
@do_ccw_entry = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"__mod_ap_device_table\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"ap\00", align 1
@do_ap_entry = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"__mod_css_device_table\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"css\00", align 1
@do_css_entry = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"__mod_serio_device_table\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"serio\00", align 1
@do_serio_entry = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"__mod_acpi_device_table\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"acpi\00", align 1
@do_acpi_entry = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [23 x i8] c"__mod_pnp_device_table\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"__mod_pnp_card_device_table\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"__mod_pcmcia_device_table\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"pcmcia\00", align 1
@do_pcmcia_entry = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [22 x i8] c"__mod_of_device_table\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"of\00", align 1
@do_of_entry = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [23 x i8] c"__mod_vio_device_table\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"vio\00", align 1
@do_vio_entry = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [25 x i8] c"__mod_input_device_table\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@do_input_entry = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [24 x i8] c"__mod_eisa_device_table\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"eisa\00", align 1
@do_eisa_entry = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [26 x i8] c"__mod_parisc_device_table\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"parisc\00", align 1
@do_parisc_entry = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [24 x i8] c"__mod_sdio_device_table\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"sdio\00", align 1
@do_sdio_entry = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [23 x i8] c"__mod_ssb_device_table\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"ssb\00", align 1
@do_ssb_entry = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [24 x i8] c"__mod_bcma_device_table\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"bcma\00", align 1
@do_bcma_entry = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [26 x i8] c"__mod_virtio_device_table\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"virtio\00", align 1
@do_virtio_entry = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [25 x i8] c"__mod_vmbus_device_table\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"vmbus\00", align 1
@do_vmbus_entry = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [23 x i8] c"__mod_i2c_device_table\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@do_i2c_entry = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [23 x i8] c"__mod_spi_device_table\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@do_spi_entry = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [23 x i8] c"__mod_dmi_device_table\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"dmi\00", align 1
@do_dmi_entry = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [28 x i8] c"__mod_platform_device_table\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@do_platform_entry = common dso_local global i32 0, align 4
@.str.49 = private unnamed_addr constant [24 x i8] c"__mod_mdio_device_table\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@do_mdio_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_moddevtable(%struct.module* %0, %struct.elf_info* %1, %struct.TYPE_7__* %2, i8* %3) #0 {
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.elf_info*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.module* %0, %struct.module** %5, align 8
  store %struct.elf_info* %1, %struct.elf_info** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i8* %3, i8** %8, align 8
  store i8* null, i8** %10, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %20 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp uge i64 %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15, %4
  br label %416

26:                                               ; preds = %15
  %27 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %28 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SHT_NOBITS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %26
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @calloc(i32 1, i32 %42)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  store i8* %44, i8** %9, align 8
  br label %66

45:                                               ; preds = %26
  %46 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %47 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = bitcast %struct.TYPE_5__* %48 to i8*
  %50 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %51 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr i8, i8* %49, i64 %59
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr i8, i8* %60, i64 %64
  store i8* %65, i8** %9, align 8
  br label %66

66:                                               ; preds = %45, %39
  %67 = load i8*, i8** %8, align 8
  %68 = call i64 @sym_is(i8* %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @do_pci_entry, align 4
  %76 = load %struct.module*, %struct.module** %5, align 8
  %77 = call i32 @do_table(i8* %71, i32 %74, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %75, %struct.module* %76)
  br label %413

78:                                               ; preds = %66
  %79 = load i8*, i8** %8, align 8
  %80 = call i64 @sym_is(i8* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i8*, i8** %9, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.module*, %struct.module** %5, align 8
  %88 = call i32 @do_usb_table(i8* %83, i32 %86, %struct.module* %87)
  br label %412

89:                                               ; preds = %78
  %90 = load i8*, i8** %8, align 8
  %91 = call i64 @sym_is(i8* %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i8*, i8** %9, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @do_hid_entry, align 4
  %99 = load %struct.module*, %struct.module** %5, align 8
  %100 = call i32 @do_table(i8* %94, i32 %97, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %98, %struct.module* %99)
  br label %411

101:                                              ; preds = %89
  %102 = load i8*, i8** %8, align 8
  %103 = call i64 @sym_is(i8* %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load i8*, i8** %9, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @do_ieee1394_entry, align 4
  %111 = load %struct.module*, %struct.module** %5, align 8
  %112 = call i32 @do_table(i8* %106, i32 %109, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %110, %struct.module* %111)
  br label %410

113:                                              ; preds = %101
  %114 = load i8*, i8** %8, align 8
  %115 = call i64 @sym_is(i8* %114, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load i8*, i8** %9, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @do_ccw_entry, align 4
  %123 = load %struct.module*, %struct.module** %5, align 8
  %124 = call i32 @do_table(i8* %118, i32 %121, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %122, %struct.module* %123)
  br label %409

125:                                              ; preds = %113
  %126 = load i8*, i8** %8, align 8
  %127 = call i64 @sym_is(i8* %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = load i8*, i8** %9, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @do_ap_entry, align 4
  %135 = load %struct.module*, %struct.module** %5, align 8
  %136 = call i32 @do_table(i8* %130, i32 %133, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %134, %struct.module* %135)
  br label %408

137:                                              ; preds = %125
  %138 = load i8*, i8** %8, align 8
  %139 = call i64 @sym_is(i8* %138, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load i8*, i8** %9, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @do_css_entry, align 4
  %147 = load %struct.module*, %struct.module** %5, align 8
  %148 = call i32 @do_table(i8* %142, i32 %145, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %146, %struct.module* %147)
  br label %407

149:                                              ; preds = %137
  %150 = load i8*, i8** %8, align 8
  %151 = call i64 @sym_is(i8* %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load i8*, i8** %9, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @do_serio_entry, align 4
  %159 = load %struct.module*, %struct.module** %5, align 8
  %160 = call i32 @do_table(i8* %154, i32 %157, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %158, %struct.module* %159)
  br label %406

161:                                              ; preds = %149
  %162 = load i8*, i8** %8, align 8
  %163 = call i64 @sym_is(i8* %162, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %161
  %166 = load i8*, i8** %9, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @do_acpi_entry, align 4
  %171 = load %struct.module*, %struct.module** %5, align 8
  %172 = call i32 @do_table(i8* %166, i32 %169, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %170, %struct.module* %171)
  br label %405

173:                                              ; preds = %161
  %174 = load i8*, i8** %8, align 8
  %175 = call i64 @sym_is(i8* %174, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %173
  %178 = load i8*, i8** %9, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.module*, %struct.module** %5, align 8
  %183 = call i32 @do_pnp_device_entry(i8* %178, i32 %181, %struct.module* %182)
  br label %404

184:                                              ; preds = %173
  %185 = load i8*, i8** %8, align 8
  %186 = call i64 @sym_is(i8* %185, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %184
  %189 = load i8*, i8** %9, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.module*, %struct.module** %5, align 8
  %194 = call i32 @do_pnp_card_entries(i8* %189, i32 %192, %struct.module* %193)
  br label %403

195:                                              ; preds = %184
  %196 = load i8*, i8** %8, align 8
  %197 = call i64 @sym_is(i8* %196, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %195
  %200 = load i8*, i8** %9, align 8
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @do_pcmcia_entry, align 4
  %205 = load %struct.module*, %struct.module** %5, align 8
  %206 = call i32 @do_table(i8* %200, i32 %203, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %204, %struct.module* %205)
  br label %402

207:                                              ; preds = %195
  %208 = load i8*, i8** %8, align 8
  %209 = call i64 @sym_is(i8* %208, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %207
  %212 = load i8*, i8** %9, align 8
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @do_of_entry, align 4
  %217 = load %struct.module*, %struct.module** %5, align 8
  %218 = call i32 @do_table(i8* %212, i32 %215, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 %216, %struct.module* %217)
  br label %401

219:                                              ; preds = %207
  %220 = load i8*, i8** %8, align 8
  %221 = call i64 @sym_is(i8* %220, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0))
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %219
  %224 = load i8*, i8** %9, align 8
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @do_vio_entry, align 4
  %229 = load %struct.module*, %struct.module** %5, align 8
  %230 = call i32 @do_table(i8* %224, i32 %227, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i32 %228, %struct.module* %229)
  br label %400

231:                                              ; preds = %219
  %232 = load i8*, i8** %8, align 8
  %233 = call i64 @sym_is(i8* %232, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0))
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %231
  %236 = load i8*, i8** %9, align 8
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @do_input_entry, align 4
  %241 = load %struct.module*, %struct.module** %5, align 8
  %242 = call i32 @do_table(i8* %236, i32 %239, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i32 %240, %struct.module* %241)
  br label %399

243:                                              ; preds = %231
  %244 = load i8*, i8** %8, align 8
  %245 = call i64 @sym_is(i8* %244, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0))
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %243
  %248 = load i8*, i8** %9, align 8
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @do_eisa_entry, align 4
  %253 = load %struct.module*, %struct.module** %5, align 8
  %254 = call i32 @do_table(i8* %248, i32 %251, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i32 %252, %struct.module* %253)
  br label %398

255:                                              ; preds = %243
  %256 = load i8*, i8** %8, align 8
  %257 = call i64 @sym_is(i8* %256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0))
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %267

259:                                              ; preds = %255
  %260 = load i8*, i8** %9, align 8
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @do_parisc_entry, align 4
  %265 = load %struct.module*, %struct.module** %5, align 8
  %266 = call i32 @do_table(i8* %260, i32 %263, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i32 %264, %struct.module* %265)
  br label %397

267:                                              ; preds = %255
  %268 = load i8*, i8** %8, align 8
  %269 = call i64 @sym_is(i8* %268, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0))
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %267
  %272 = load i8*, i8** %9, align 8
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @do_sdio_entry, align 4
  %277 = load %struct.module*, %struct.module** %5, align 8
  %278 = call i32 @do_table(i8* %272, i32 %275, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i32 %276, %struct.module* %277)
  br label %396

279:                                              ; preds = %267
  %280 = load i8*, i8** %8, align 8
  %281 = call i64 @sym_is(i8* %280, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0))
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %291

283:                                              ; preds = %279
  %284 = load i8*, i8** %9, align 8
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @do_ssb_entry, align 4
  %289 = load %struct.module*, %struct.module** %5, align 8
  %290 = call i32 @do_table(i8* %284, i32 %287, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i32 %288, %struct.module* %289)
  br label %395

291:                                              ; preds = %279
  %292 = load i8*, i8** %8, align 8
  %293 = call i64 @sym_is(i8* %292, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0))
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %303

295:                                              ; preds = %291
  %296 = load i8*, i8** %9, align 8
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @do_bcma_entry, align 4
  %301 = load %struct.module*, %struct.module** %5, align 8
  %302 = call i32 @do_table(i8* %296, i32 %299, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i32 %300, %struct.module* %301)
  br label %394

303:                                              ; preds = %291
  %304 = load i8*, i8** %8, align 8
  %305 = call i64 @sym_is(i8* %304, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i64 0, i64 0))
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %303
  %308 = load i8*, i8** %9, align 8
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @do_virtio_entry, align 4
  %313 = load %struct.module*, %struct.module** %5, align 8
  %314 = call i32 @do_table(i8* %308, i32 %311, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i32 %312, %struct.module* %313)
  br label %393

315:                                              ; preds = %303
  %316 = load i8*, i8** %8, align 8
  %317 = call i64 @sym_is(i8* %316, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i64 0, i64 0))
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %315
  %320 = load i8*, i8** %9, align 8
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @do_vmbus_entry, align 4
  %325 = load %struct.module*, %struct.module** %5, align 8
  %326 = call i32 @do_table(i8* %320, i32 %323, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i32 %324, %struct.module* %325)
  br label %392

327:                                              ; preds = %315
  %328 = load i8*, i8** %8, align 8
  %329 = call i64 @sym_is(i8* %328, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0))
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %339

331:                                              ; preds = %327
  %332 = load i8*, i8** %9, align 8
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @do_i2c_entry, align 4
  %337 = load %struct.module*, %struct.module** %5, align 8
  %338 = call i32 @do_table(i8* %332, i32 %335, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i32 %336, %struct.module* %337)
  br label %391

339:                                              ; preds = %327
  %340 = load i8*, i8** %8, align 8
  %341 = call i64 @sym_is(i8* %340, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0))
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %351

343:                                              ; preds = %339
  %344 = load i8*, i8** %9, align 8
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @do_spi_entry, align 4
  %349 = load %struct.module*, %struct.module** %5, align 8
  %350 = call i32 @do_table(i8* %344, i32 %347, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %348, %struct.module* %349)
  br label %390

351:                                              ; preds = %339
  %352 = load i8*, i8** %8, align 8
  %353 = call i64 @sym_is(i8* %352, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i64 0, i64 0))
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %363

355:                                              ; preds = %351
  %356 = load i8*, i8** %9, align 8
  %357 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* @do_dmi_entry, align 4
  %361 = load %struct.module*, %struct.module** %5, align 8
  %362 = call i32 @do_table(i8* %356, i32 %359, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), i32 %360, %struct.module* %361)
  br label %389

363:                                              ; preds = %351
  %364 = load i8*, i8** %8, align 8
  %365 = call i64 @sym_is(i8* %364, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i64 0, i64 0))
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %375

367:                                              ; preds = %363
  %368 = load i8*, i8** %9, align 8
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @do_platform_entry, align 4
  %373 = load %struct.module*, %struct.module** %5, align 8
  %374 = call i32 @do_table(i8* %368, i32 %371, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), i32 %372, %struct.module* %373)
  br label %388

375:                                              ; preds = %363
  %376 = load i8*, i8** %8, align 8
  %377 = call i64 @sym_is(i8* %376, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0))
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %387

379:                                              ; preds = %375
  %380 = load i8*, i8** %9, align 8
  %381 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @do_mdio_entry, align 4
  %385 = load %struct.module*, %struct.module** %5, align 8
  %386 = call i32 @do_table(i8* %380, i32 %383, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i32 %384, %struct.module* %385)
  br label %387

387:                                              ; preds = %379, %375
  br label %388

388:                                              ; preds = %387, %367
  br label %389

389:                                              ; preds = %388, %355
  br label %390

390:                                              ; preds = %389, %343
  br label %391

391:                                              ; preds = %390, %331
  br label %392

392:                                              ; preds = %391, %319
  br label %393

393:                                              ; preds = %392, %307
  br label %394

394:                                              ; preds = %393, %295
  br label %395

395:                                              ; preds = %394, %283
  br label %396

396:                                              ; preds = %395, %271
  br label %397

397:                                              ; preds = %396, %259
  br label %398

398:                                              ; preds = %397, %247
  br label %399

399:                                              ; preds = %398, %235
  br label %400

400:                                              ; preds = %399, %223
  br label %401

401:                                              ; preds = %400, %211
  br label %402

402:                                              ; preds = %401, %199
  br label %403

403:                                              ; preds = %402, %188
  br label %404

404:                                              ; preds = %403, %177
  br label %405

405:                                              ; preds = %404, %165
  br label %406

406:                                              ; preds = %405, %153
  br label %407

407:                                              ; preds = %406, %141
  br label %408

408:                                              ; preds = %407, %129
  br label %409

409:                                              ; preds = %408, %117
  br label %410

410:                                              ; preds = %409, %105
  br label %411

411:                                              ; preds = %410, %93
  br label %412

412:                                              ; preds = %411, %82
  br label %413

413:                                              ; preds = %412, %70
  %414 = load i8*, i8** %10, align 8
  %415 = call i32 @free(i8* %414)
  br label %416

416:                                              ; preds = %413, %25
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i64 @sym_is(i8*, i8*) #1

declare dso_local i32 @do_table(i8*, i32, i32, i8*, i32, %struct.module*) #1

declare dso_local i32 @do_usb_table(i8*, i32, %struct.module*) #1

declare dso_local i32 @do_pnp_device_entry(i8*, i32, %struct.module*) #1

declare dso_local i32 @do_pnp_card_entries(i8*, i32, %struct.module*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
