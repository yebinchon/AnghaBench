; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_proc.c_print_pin_caps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_proc.c_print_pin_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.hda_codec = type { i32 }

@print_pin_caps.jack_conns = internal global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"Jack\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Fixed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Both\00", align 1
@AC_PAR_PIN_CAP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"  Pincap 0x%08x:\00", align 1
@AC_PINCAP_IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c" IN\00", align 1
@AC_PINCAP_OUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c" OUT\00", align 1
@AC_PINCAP_HP_DRV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c" HP\00", align 1
@AC_PINCAP_EAPD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c" EAPD\00", align 1
@AC_PINCAP_PRES_DETECT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c" Detect\00", align 1
@AC_PINCAP_BALANCE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c" Balanced\00", align 1
@AC_PINCAP_HDMI = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c" R/L\00", align 1
@AC_PINCAP_HBR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c" HBR\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c" HDMI\00", align 1
@AC_PINCAP_DP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c" DP\00", align 1
@AC_PINCAP_TRIG_REQ = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c" Trigger\00", align 1
@AC_PINCAP_IMP_SENSE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c" ImpSense\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AC_PINCAP_VREF = common dso_local global i32 0, align 4
@AC_PINCAP_VREF_SHIFT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"    Vref caps:\00", align 1
@AC_PINCAP_VREF_HIZ = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c" HIZ\00", align 1
@AC_PINCAP_VREF_50 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [4 x i8] c" 50\00", align 1
@AC_PINCAP_VREF_GRD = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [5 x i8] c" GRD\00", align 1
@AC_PINCAP_VREF_80 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [4 x i8] c" 80\00", align 1
@AC_PINCAP_VREF_100 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [5 x i8] c" 100\00", align 1
@AC_VERB_GET_EAPD_BTLENABLE = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [13 x i8] c"  EAPD 0x%x:\00", align 1
@AC_EAPDBTL_BALANCED = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [10 x i8] c" BALANCED\00", align 1
@AC_EAPDBTL_EAPD = common dso_local global i32 0, align 4
@AC_EAPDBTL_LR_SWAP = common dso_local global i32 0, align 4
@AC_VERB_GET_CONFIG_DEFAULT = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [40 x i8] c"  Pin Default 0x%08x: [%s] %s at %s %s\0A\00", align 1
@AC_DEFCFG_PORT_CONN = common dso_local global i32 0, align 4
@AC_DEFCFG_PORT_CONN_SHIFT = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [27 x i8] c"    Conn = %s, Color = %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"    DefAssociation = 0x%x, Sequence = 0x%x\0A\00", align 1
@AC_DEFCFG_DEF_ASSOC = common dso_local global i32 0, align 4
@AC_DEFCFG_ASSOC_SHIFT = common dso_local global i32 0, align 4
@AC_DEFCFG_SEQUENCE = common dso_local global i32 0, align 4
@AC_DEFCFG_MISC = common dso_local global i32 0, align 4
@AC_DEFCFG_MISC_SHIFT = common dso_local global i32 0, align 4
@AC_DEFCFG_MISC_NO_PRESENCE = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [24 x i8] c"    Misc = NO_PRESENCE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32*)* @print_pin_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_pin_caps(%struct.snd_info_buffer* %0, %struct.hda_codec* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.snd_info_buffer*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %5, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @AC_PAR_PIN_CAP, align 4
  %15 = call i32 @snd_hda_param_read(%struct.hda_codec* %12, i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @AC_PINCAP_IN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %25 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @AC_PINCAP_OUT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %33 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @AC_PINCAP_HP_DRV, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %41 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @AC_PINCAP_EAPD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %49 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @AC_PINCAP_PRES_DETECT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %57 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @AC_PINCAP_BALANCE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %65 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @AC_PINCAP_HDMI, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %66
  %72 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %73 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 16
  %76 = icmp eq i32 %75, 4332
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %79 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %91

80:                                               ; preds = %71
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @AC_PINCAP_HBR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %87 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %80
  %89 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %90 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %77
  br label %92

92:                                               ; preds = %91, %66
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @AC_PINCAP_DP, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %99 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %92
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @AC_PINCAP_TRIG_REQ, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %107 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %100
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @AC_PINCAP_IMP_SENSE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %115 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %108
  %117 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %118 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @AC_PINCAP_VREF, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %174

123:                                              ; preds = %116
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @AC_PINCAP_VREF, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* @AC_PINCAP_VREF_SHIFT, align 4
  %128 = lshr i32 %126, %127
  store i32 %128, i32* %11, align 4
  %129 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %130 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %129, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @AC_PINCAP_VREF_HIZ, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %123
  %136 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %137 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %123
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @AC_PINCAP_VREF_50, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %145 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %138
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @AC_PINCAP_VREF_GRD, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %153 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %146
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @AC_PINCAP_VREF_80, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %161 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %160, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %154
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @AC_PINCAP_VREF_100, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %169 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  br label %170

170:                                              ; preds = %167, %162
  %171 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %172 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %173 = load i32*, i32** %8, align 8
  store i32 1, i32* %173, align 4
  br label %176

174:                                              ; preds = %116
  %175 = load i32*, i32** %8, align 8
  store i32 0, i32* %175, align 4
  br label %176

176:                                              ; preds = %174, %170
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @AC_PINCAP_EAPD, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %215

181:                                              ; preds = %176
  %182 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @AC_VERB_GET_EAPD_BTLENABLE, align 4
  %185 = call i32 @snd_hda_codec_read(%struct.hda_codec* %182, i32 %183, i32 0, i32 %184, i32 0)
  store i32 %185, i32* %10, align 4
  %186 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %187 = load i32, i32* %10, align 4
  %188 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %186, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @AC_EAPDBTL_BALANCED, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %181
  %194 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %195 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %194, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  br label %196

196:                                              ; preds = %193, %181
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* @AC_EAPDBTL_EAPD, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %203 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %204

204:                                              ; preds = %201, %196
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* @AC_EAPDBTL_LR_SWAP, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %211 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %210, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %204
  %213 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %214 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %213, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %215

215:                                              ; preds = %212, %176
  %216 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* @AC_VERB_GET_CONFIG_DEFAULT, align 4
  %219 = call i32 @snd_hda_codec_read(%struct.hda_codec* %216, i32 %217, i32 0, i32 %218, i32 0)
  store i32 %219, i32* %9, align 4
  %220 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* @AC_DEFCFG_PORT_CONN, align 4
  %224 = and i32 %222, %223
  %225 = load i32, i32* @AC_DEFCFG_PORT_CONN_SHIFT, align 4
  %226 = lshr i32 %224, %225
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds [4 x i8*], [4 x i8*]* @print_pin_caps.jack_conns, i64 0, i64 %227
  %229 = load i8*, i8** %228, align 8
  %230 = load i32, i32* %9, align 4
  %231 = call i32 @snd_hda_get_jack_type(i32 %230)
  %232 = load i32, i32* %9, align 4
  %233 = call i32 @snd_hda_get_jack_connectivity(i32 %232)
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @snd_hda_get_jack_location(i32 %234)
  %236 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %220, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i32 %221, i8* %229, i32 %231, i32 %233, i32 %235)
  %237 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %238 = load i32, i32* %9, align 4
  %239 = call i32 @get_jack_connection(i32 %238)
  %240 = load i32, i32* %9, align 4
  %241 = call i32 @get_jack_color(i32 %240)
  %242 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %237, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 %239, i32 %241)
  %243 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* @AC_DEFCFG_DEF_ASSOC, align 4
  %246 = and i32 %244, %245
  %247 = load i32, i32* @AC_DEFCFG_ASSOC_SHIFT, align 4
  %248 = lshr i32 %246, %247
  %249 = load i32, i32* %9, align 4
  %250 = load i32, i32* @AC_DEFCFG_SEQUENCE, align 4
  %251 = and i32 %249, %250
  %252 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %243, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i64 0, i64 0), i32 %248, i32 %251)
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* @AC_DEFCFG_MISC, align 4
  %255 = and i32 %253, %254
  %256 = load i32, i32* @AC_DEFCFG_MISC_SHIFT, align 4
  %257 = lshr i32 %255, %256
  %258 = load i32, i32* @AC_DEFCFG_MISC_NO_PRESENCE, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %215
  %262 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %263 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %262, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0))
  br label %264

264:                                              ; preds = %261, %215
  ret void
}

declare dso_local i32 @snd_hda_param_read(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_get_jack_type(i32) #1

declare dso_local i32 @snd_hda_get_jack_connectivity(i32) #1

declare dso_local i32 @snd_hda_get_jack_location(i32) #1

declare dso_local i32 @get_jack_connection(i32) #1

declare dso_local i32 @get_jack_color(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
