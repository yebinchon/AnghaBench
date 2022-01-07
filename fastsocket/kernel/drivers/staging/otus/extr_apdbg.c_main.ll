; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_apdbg.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_apdbg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i8*, i32 }
%struct.zdap_ioctl = type { i32, i32, i8*, i32 }

@prgname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"%s: usage is \22%s <ifname> <operation> [<address>] [<value>]\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"valid operation: read, write, mem, reg,\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"               : txd, rxd, rmem, wmem\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"               : dmat, regt, test\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"    scan, Channel Scan\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"    rts <decimal>, Set RTS Threshold\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"    frag <decimal>, Set Fragment Threshold\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"    rate <0-28>, 0:AUTO, 1-4:CCK, 5-12:OFDM, 13-28:HT\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"    TBD mix <0 or 1>, Set 1 to enable mixed mode\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"    enc, <0-3>, 0=>OPEN, 1=>WEP64, 2=>WEP128, 3=>WEP256\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"    skey <key>, Set WEP key\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"    txcnt, Get TxQ Cnt\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"    dagcnt, Get Deaggregate Cnt\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"    durmode <mode>, Set Duration Mode 0=>HW, 1=>SW\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"    aeskey <user> <key>\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"    aesmode <mode>\0A\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"    wlanmode <0,1> 0:Station mode, 1:PIBSS mode\0A\00", align 1
@.str.17 = private unnamed_addr constant [67 x i8] c"    tal <0,1>, Get Current Tally Info, 0=>read, 1=>read and reset\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_RAW = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [18 x i8] c"%s: socket(): %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@ZM_IOCTL_REG_READ = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@ZM_IOCTL_MEM_DUMP = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@ZM_IOCTL_REG_WRITE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@ZM_IOCTL_REG_DUMP = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [4 x i8] c"txd\00", align 1
@ZM_IOCTL_TXD_DUMP = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"rxd\00", align 1
@ZM_IOCTL_RXD_DUMP = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"rmem\00", align 1
@ZM_IOCTL_MEM_READ = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"wmem\00", align 1
@ZM_IOCTL_MEM_WRITE = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [5 x i8] c"dmat\00", align 1
@ZM_IOCTL_DMA_TEST = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [5 x i8] c"regt\00", align 1
@ZM_IOCTL_REG_TEST = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@ZM_IOCTL_TEST = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [4 x i8] c"tal\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ZM_IOCTL_TALLY = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [4 x i8] c"rts\00", align 1
@ZM_IOCTL_RTS = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [4 x i8] c"mix\00", align 1
@ZM_IOCTL_MIX_MODE = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [5 x i8] c"frag\00", align 1
@ZM_IOCTL_FRAG = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [5 x i8] c"scan\00", align 1
@ZM_IOCTL_SCAN = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [5 x i8] c"skey\00", align 1
@ZM_IOCTL_KEY = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [21 x i8] c"%02x%02x%02x%02x%02x\00", align 1
@.str.39 = private unnamed_addr constant [53 x i8] c"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\00", align 1
@.str.40 = private unnamed_addr constant [117 x i8] c"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"Invalid key length\0A\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"Error : Key required!\0A\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"Invalid rate, range:0~28\0A\00", align 1
@ZM_IOCTL_RATE = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [4 x i8] c"enc\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"Invalid encryption mode, range:0~3\0A\00", align 1
@ZM_IOCTL_ENCRYPTION_MODE = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [6 x i8] c"txcnt\00", align 1
@ZM_IOCTL_GET_TXCNT = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [7 x i8] c"dagcnt\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"The value should be 0 or 1\0A\00", align 1
@ZM_IOCTL_GET_DEAGG_CNT = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [8 x i8] c"durmode\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"The Duration mode should be 0 or 1\0A\00", align 1
@ZM_IOCTL_DURATION_MODE = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [7 x i8] c"aeskey\00", align 1
@.str.53 = private unnamed_addr constant [65 x i8] c"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\00", align 1
@ZM_IOCTL_SET_AES_KEY = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [8 x i8] c"aesmode\00", align 1
@ZM_IOCTL_SET_AES_MODE = common dso_local global i32 0, align 4
@.str.55 = private unnamed_addr constant [9 x i8] c"wlanmode\00", align 1
@ZM_IOCTL_SET_PIBSS_MODE = common dso_local global i32 0, align 4
@.str.56 = private unnamed_addr constant [14 x i8] c"error action\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifreq, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.zdap_ioctl, align 8
  %12 = alloca [29 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [16 x i8], align 16
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %10, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** @prgname, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %63

23:                                               ; preds = %2
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8*, i8** @prgname, align 8
  %26 = load i8*, i8** @prgname, align 8
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26)
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0))
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0))
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.17, i64 0, i64 0))
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %2
  %64 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %9, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @strcpy(i32 %65, i8* %68)
  %70 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load i32, i32* @AF_INET, align 4
  %73 = load i32, i32* @SOCK_RAW, align 4
  %74 = load i32, i32* @IPPROTO_RAW, align 4
  %75 = call i32 @socket(i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %63
  %79 = load i32, i32* @stderr, align 4
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* @errno, align 4
  %84 = call i8* @strerror(i32 %83)
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* %82, i8* %84)
  %86 = call i32 @exit(i32 1) #3
  unreachable

87:                                               ; preds = %63
  %88 = load i32, i32* %4, align 4
  %89 = icmp sge i32 %88, 4
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 3
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i8*, i8*, ...) @sscanf(i8* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32* %7)
  br label %95

95:                                               ; preds = %90, %87
  %96 = load i32, i32* %4, align 4
  %97 = icmp sge i32 %96, 5
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 4
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i8*, i8*, ...) @sscanf(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32* %8)
  br label %103

103:                                              ; preds = %98, %95
  %104 = load i32, i32* %7, align 4
  %105 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 0
  store i32 %104, i32* %105, align 8
  %106 = load i32, i32* %8, align 4
  %107 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 1
  store i32 %106, i32* %107, align 4
  %108 = load i8**, i8*** %5, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 2
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %103
  %114 = load i32, i32* @ZM_IOCTL_REG_READ, align 4
  %115 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %114, i32* %115, align 8
  br label %609

116:                                              ; preds = %103
  %117 = load i8**, i8*** %5, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 2
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* @ZM_IOCTL_MEM_DUMP, align 4
  %124 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %123, i32* %124, align 8
  br label %608

125:                                              ; preds = %116
  %126 = load i8**, i8*** %5, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @strcmp(i8* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %125
  %132 = load i32, i32* @ZM_IOCTL_REG_WRITE, align 4
  %133 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %132, i32* %133, align 8
  br label %607

134:                                              ; preds = %125
  %135 = load i8**, i8*** %5, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 2
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @strcmp(i8* %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %134
  %141 = load i32, i32* @ZM_IOCTL_REG_DUMP, align 4
  %142 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %141, i32* %142, align 8
  br label %606

143:                                              ; preds = %134
  %144 = load i8**, i8*** %5, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 2
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @strcmp(i8* %146, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %143
  %150 = load i32, i32* @ZM_IOCTL_TXD_DUMP, align 4
  %151 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %150, i32* %151, align 8
  br label %605

152:                                              ; preds = %143
  %153 = load i8**, i8*** %5, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 2
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @strcmp(i8* %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %152
  %159 = load i32, i32* @ZM_IOCTL_RXD_DUMP, align 4
  %160 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %159, i32* %160, align 8
  br label %604

161:                                              ; preds = %152
  %162 = load i8**, i8*** %5, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 2
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %161
  %168 = load i32, i32* @ZM_IOCTL_MEM_READ, align 4
  %169 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %168, i32* %169, align 8
  br label %603

170:                                              ; preds = %161
  %171 = load i8**, i8*** %5, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 2
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @strcmp(i8* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %170
  %177 = load i32, i32* @ZM_IOCTL_MEM_WRITE, align 4
  %178 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %177, i32* %178, align 8
  br label %602

179:                                              ; preds = %170
  %180 = load i8**, i8*** %5, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 2
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @strcmp(i8* %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %179
  %186 = load i32, i32* @ZM_IOCTL_DMA_TEST, align 4
  %187 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %186, i32* %187, align 8
  br label %601

188:                                              ; preds = %179
  %189 = load i8**, i8*** %5, align 8
  %190 = getelementptr inbounds i8*, i8** %189, i64 2
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @strcmp(i8* %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %188
  %195 = load i32, i32* @ZM_IOCTL_REG_TEST, align 4
  %196 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %195, i32* %196, align 8
  br label %600

197:                                              ; preds = %188
  %198 = load i8**, i8*** %5, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 2
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @strcmp(i8* %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %197
  %204 = load i32, i32* @ZM_IOCTL_TEST, align 4
  %205 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %204, i32* %205, align 8
  br label %599

206:                                              ; preds = %197
  %207 = load i8**, i8*** %5, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i64 2
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @strcmp(i8* %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %221, label %212

212:                                              ; preds = %206
  %213 = load i8**, i8*** %5, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 3
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 (i8*, i8*, ...) @sscanf(i8* %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32* %7)
  %217 = load i32, i32* %7, align 4
  %218 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 0
  store i32 %217, i32* %218, align 8
  %219 = load i32, i32* @ZM_IOCTL_TALLY, align 4
  %220 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %219, i32* %220, align 8
  br label %598

221:                                              ; preds = %206
  %222 = load i8**, i8*** %5, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i64 2
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @strcmp(i8* %224, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0))
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %236, label %227

227:                                              ; preds = %221
  %228 = load i8**, i8*** %5, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 3
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 (i8*, i8*, ...) @sscanf(i8* %230, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32* %7)
  %232 = load i32, i32* %7, align 4
  %233 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 0
  store i32 %232, i32* %233, align 8
  %234 = load i32, i32* @ZM_IOCTL_RTS, align 4
  %235 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %234, i32* %235, align 8
  br label %597

236:                                              ; preds = %221
  %237 = load i8**, i8*** %5, align 8
  %238 = getelementptr inbounds i8*, i8** %237, i64 2
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @strcmp(i8* %239, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0))
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %236
  %243 = load i32, i32* @ZM_IOCTL_MIX_MODE, align 4
  %244 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %243, i32* %244, align 8
  br label %596

245:                                              ; preds = %236
  %246 = load i8**, i8*** %5, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i64 2
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @strcmp(i8* %248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0))
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %260, label %251

251:                                              ; preds = %245
  %252 = load i8**, i8*** %5, align 8
  %253 = getelementptr inbounds i8*, i8** %252, i64 3
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 (i8*, i8*, ...) @sscanf(i8* %254, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32* %7)
  %256 = load i32, i32* %7, align 4
  %257 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 0
  store i32 %256, i32* %257, align 8
  %258 = load i32, i32* @ZM_IOCTL_FRAG, align 4
  %259 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %258, i32* %259, align 8
  br label %595

260:                                              ; preds = %245
  %261 = load i8**, i8*** %5, align 8
  %262 = getelementptr inbounds i8*, i8** %261, i64 2
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @strcmp(i8* %263, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0))
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %260
  %267 = load i32, i32* @ZM_IOCTL_SCAN, align 4
  %268 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %267, i32* %268, align 8
  br label %594

269:                                              ; preds = %260
  %270 = load i8**, i8*** %5, align 8
  %271 = getelementptr inbounds i8*, i8** %270, i64 2
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @strcmp(i8* %272, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0))
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %387, label %275

275:                                              ; preds = %269
  %276 = load i32, i32* @ZM_IOCTL_KEY, align 4
  %277 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %276, i32* %277, align 8
  %278 = load i32, i32* %4, align 4
  %279 = icmp sge i32 %278, 4
  br i1 %279, label %280, label %384

280:                                              ; preds = %275
  %281 = load i8**, i8*** %5, align 8
  %282 = getelementptr inbounds i8*, i8** %281, i64 3
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @strlen(i8* %283)
  store i32 %284, i32* %14, align 4
  %285 = load i32, i32* %14, align 4
  %286 = icmp eq i32 %285, 10
  br i1 %286, label %287, label %297

287:                                              ; preds = %280
  %288 = load i8**, i8*** %5, align 8
  %289 = getelementptr inbounds i8*, i8** %288, i64 3
  %290 = load i8*, i8** %289, align 8
  %291 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 0
  %292 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 1
  %293 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 2
  %294 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 3
  %295 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 4
  %296 = call i32 (i8*, i8*, ...) @sscanf(i8* %290, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i8* %291, i8* %292, i8* %293, i8* %294, i8* %295)
  br label %361

297:                                              ; preds = %280
  %298 = load i32, i32* %14, align 4
  %299 = icmp eq i32 %298, 26
  br i1 %299, label %300, label %318

300:                                              ; preds = %297
  %301 = load i8**, i8*** %5, align 8
  %302 = getelementptr inbounds i8*, i8** %301, i64 3
  %303 = load i8*, i8** %302, align 8
  %304 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 0
  %305 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 1
  %306 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 2
  %307 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 3
  %308 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 4
  %309 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 5
  %310 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 6
  %311 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 7
  %312 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 8
  %313 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 9
  %314 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 10
  %315 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 11
  %316 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 12
  %317 = call i32 (i8*, i8*, ...) @sscanf(i8* %303, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.39, i64 0, i64 0), i8* %304, i8* %305, i8* %306, i8* %307, i8* %308, i8* %309, i8* %310, i8* %311, i8* %312, i8* %313, i8* %314, i8* %315, i8* %316)
  br label %360

318:                                              ; preds = %297
  %319 = load i32, i32* %14, align 4
  %320 = icmp eq i32 %319, 58
  br i1 %320, label %321, label %355

321:                                              ; preds = %318
  %322 = load i8**, i8*** %5, align 8
  %323 = getelementptr inbounds i8*, i8** %322, i64 3
  %324 = load i8*, i8** %323, align 8
  %325 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 0
  %326 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 1
  %327 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 2
  %328 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 3
  %329 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 4
  %330 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 5
  %331 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 6
  %332 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 7
  %333 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 8
  %334 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 9
  %335 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 10
  %336 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 11
  %337 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 12
  %338 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 13
  %339 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 14
  %340 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 15
  %341 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 16
  %342 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 17
  %343 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 18
  %344 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 19
  %345 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 20
  %346 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 21
  %347 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 22
  %348 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 23
  %349 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 24
  %350 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 25
  %351 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 26
  %352 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 27
  %353 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 28
  %354 = call i32 (i8*, i8*, ...) @sscanf(i8* %324, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.40, i64 0, i64 0), i8* %325, i8* %326, i8* %327, i8* %328, i8* %329, i8* %330, i8* %331, i8* %332, i8* %333, i8* %334, i8* %335, i8* %336, i8* %337, i8* %338, i8* %339, i8* %340, i8* %341, i8* %342, i8* %343, i8* %344, i8* %345, i8* %346, i8* %347, i8* %348, i8* %349, i8* %350, i8* %351, i8* %352, i8* %353)
  br label %359

355:                                              ; preds = %318
  %356 = load i32, i32* @stderr, align 4
  %357 = call i32 (i32, i8*, ...) @fprintf(i32 %356, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0))
  %358 = call i32 @exit(i32 1) #3
  unreachable

359:                                              ; preds = %321
  br label %360

360:                                              ; preds = %359, %300
  br label %361

361:                                              ; preds = %360, %287
  %362 = load i32, i32* %14, align 4
  %363 = sdiv i32 %362, 2
  %364 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 0
  store i32 %363, i32* %364, align 8
  store i32 0, i32* %13, align 4
  br label %365

365:                                              ; preds = %380, %361
  %366 = load i32, i32* %13, align 4
  %367 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = icmp slt i32 %366, %368
  br i1 %369, label %370, label %383

370:                                              ; preds = %365
  %371 = load i32, i32* %13, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [29 x i8], [29 x i8]* %12, i64 0, i64 %372
  %374 = load i8, i8* %373, align 1
  %375 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 2
  %376 = load i8*, i8** %375, align 8
  %377 = load i32, i32* %13, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8, i8* %376, i64 %378
  store i8 %374, i8* %379, align 1
  br label %380

380:                                              ; preds = %370
  %381 = load i32, i32* %13, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %13, align 4
  br label %365

383:                                              ; preds = %365
  br label %386

384:                                              ; preds = %275
  %385 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0))
  br label %386

386:                                              ; preds = %384, %383
  br label %593

387:                                              ; preds = %269
  %388 = load i8**, i8*** %5, align 8
  %389 = getelementptr inbounds i8*, i8** %388, i64 2
  %390 = load i8*, i8** %389, align 8
  %391 = call i32 @strcmp(i8* %390, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0))
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %409, label %393

393:                                              ; preds = %387
  %394 = load i8**, i8*** %5, align 8
  %395 = getelementptr inbounds i8*, i8** %394, i64 3
  %396 = load i8*, i8** %395, align 8
  %397 = call i32 (i8*, i8*, ...) @sscanf(i8* %396, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32* %7)
  %398 = load i32, i32* %7, align 4
  %399 = icmp sgt i32 %398, 28
  br i1 %399, label %400, label %404

400:                                              ; preds = %393
  %401 = load i32, i32* @stderr, align 4
  %402 = call i32 (i32, i8*, ...) @fprintf(i32 %401, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i64 0, i64 0))
  %403 = call i32 @exit(i32 1) #3
  unreachable

404:                                              ; preds = %393
  %405 = load i32, i32* %7, align 4
  %406 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 0
  store i32 %405, i32* %406, align 8
  %407 = load i32, i32* @ZM_IOCTL_RATE, align 4
  %408 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %407, i32* %408, align 8
  br label %592

409:                                              ; preds = %387
  %410 = load i8**, i8*** %5, align 8
  %411 = getelementptr inbounds i8*, i8** %410, i64 2
  %412 = load i8*, i8** %411, align 8
  %413 = call i32 @strcmp(i8* %412, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0))
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %440, label %415

415:                                              ; preds = %409
  %416 = load i8**, i8*** %5, align 8
  %417 = getelementptr inbounds i8*, i8** %416, i64 3
  %418 = load i8*, i8** %417, align 8
  %419 = call i32 (i8*, i8*, ...) @sscanf(i8* %418, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32* %7)
  %420 = load i32, i32* %7, align 4
  %421 = icmp sgt i32 %420, 3
  br i1 %421, label %422, label %426

422:                                              ; preds = %415
  %423 = load i32, i32* @stderr, align 4
  %424 = call i32 (i32, i8*, ...) @fprintf(i32 %423, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i64 0, i64 0))
  %425 = call i32 @exit(i32 1) #3
  unreachable

426:                                              ; preds = %415
  %427 = load i32, i32* %7, align 4
  %428 = icmp eq i32 %427, 2
  br i1 %428, label %429, label %430

429:                                              ; preds = %426
  store i32 5, i32* %7, align 4
  br label %435

430:                                              ; preds = %426
  %431 = load i32, i32* %7, align 4
  %432 = icmp eq i32 %431, 3
  br i1 %432, label %433, label %434

433:                                              ; preds = %430
  store i32 6, i32* %7, align 4
  br label %434

434:                                              ; preds = %433, %430
  br label %435

435:                                              ; preds = %434, %429
  %436 = load i32, i32* %7, align 4
  %437 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 0
  store i32 %436, i32* %437, align 8
  %438 = load i32, i32* @ZM_IOCTL_ENCRYPTION_MODE, align 4
  %439 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %438, i32* %439, align 8
  br label %591

440:                                              ; preds = %409
  %441 = load i8**, i8*** %5, align 8
  %442 = getelementptr inbounds i8*, i8** %441, i64 2
  %443 = load i8*, i8** %442, align 8
  %444 = call i32 @strcmp(i8* %443, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0))
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %449, label %446

446:                                              ; preds = %440
  %447 = load i32, i32* @ZM_IOCTL_GET_TXCNT, align 4
  %448 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %447, i32* %448, align 8
  br label %590

449:                                              ; preds = %440
  %450 = load i8**, i8*** %5, align 8
  %451 = getelementptr inbounds i8*, i8** %450, i64 2
  %452 = load i8*, i8** %451, align 8
  %453 = call i32 @strcmp(i8* %452, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0))
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %474, label %455

455:                                              ; preds = %449
  %456 = load i8**, i8*** %5, align 8
  %457 = getelementptr inbounds i8*, i8** %456, i64 3
  %458 = load i8*, i8** %457, align 8
  %459 = call i32 (i8*, i8*, ...) @sscanf(i8* %458, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32* %7)
  %460 = load i32, i32* %7, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %469

462:                                              ; preds = %455
  %463 = load i32, i32* %7, align 4
  %464 = icmp ne i32 %463, 1
  br i1 %464, label %465, label %469

465:                                              ; preds = %462
  %466 = load i32, i32* @stderr, align 4
  %467 = call i32 (i32, i8*, ...) @fprintf(i32 %466, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i64 0, i64 0))
  %468 = call i32 @exit(i32 0) #3
  unreachable

469:                                              ; preds = %462, %455
  %470 = load i32, i32* %7, align 4
  %471 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 0
  store i32 %470, i32* %471, align 8
  %472 = load i32, i32* @ZM_IOCTL_GET_DEAGG_CNT, align 4
  %473 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %472, i32* %473, align 8
  br label %589

474:                                              ; preds = %449
  %475 = load i8**, i8*** %5, align 8
  %476 = getelementptr inbounds i8*, i8** %475, i64 2
  %477 = load i8*, i8** %476, align 8
  %478 = call i32 @strcmp(i8* %477, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0))
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %499, label %480

480:                                              ; preds = %474
  %481 = load i8**, i8*** %5, align 8
  %482 = getelementptr inbounds i8*, i8** %481, i64 3
  %483 = load i8*, i8** %482, align 8
  %484 = call i32 (i8*, i8*, ...) @sscanf(i8* %483, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32* %7)
  %485 = load i32, i32* %7, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %494

487:                                              ; preds = %480
  %488 = load i32, i32* %7, align 4
  %489 = icmp ne i32 %488, 1
  br i1 %489, label %490, label %494

490:                                              ; preds = %487
  %491 = load i32, i32* @stderr, align 4
  %492 = call i32 (i32, i8*, ...) @fprintf(i32 %491, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.51, i64 0, i64 0))
  %493 = call i32 @exit(i32 0) #3
  unreachable

494:                                              ; preds = %487, %480
  %495 = load i32, i32* %7, align 4
  %496 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 0
  store i32 %495, i32* %496, align 8
  %497 = load i32, i32* @ZM_IOCTL_DURATION_MODE, align 4
  %498 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %497, i32* %498, align 8
  br label %588

499:                                              ; preds = %474
  %500 = load i8**, i8*** %5, align 8
  %501 = getelementptr inbounds i8*, i8** %500, i64 2
  %502 = load i8*, i8** %501, align 8
  %503 = call i32 @strcmp(i8* %502, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0))
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %551, label %505

505:                                              ; preds = %499
  %506 = load i8**, i8*** %5, align 8
  %507 = getelementptr inbounds i8*, i8** %506, i64 3
  %508 = load i8*, i8** %507, align 8
  %509 = call i32 (i8*, i8*, ...) @sscanf(i8* %508, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32* %7)
  %510 = load i8**, i8*** %5, align 8
  %511 = getelementptr inbounds i8*, i8** %510, i64 4
  %512 = load i8*, i8** %511, align 8
  %513 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %514 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 1
  %515 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 2
  %516 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 3
  %517 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 4
  %518 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 5
  %519 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 6
  %520 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 7
  %521 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 8
  %522 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 9
  %523 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 10
  %524 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 11
  %525 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 12
  %526 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 13
  %527 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 14
  %528 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 15
  %529 = call i32 (i8*, i8*, ...) @sscanf(i8* %512, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.53, i64 0, i64 0), i8* %513, i8* %514, i8* %515, i8* %516, i8* %517, i8* %518, i8* %519, i8* %520, i8* %521, i8* %522, i8* %523, i8* %524, i8* %525, i8* %526, i8* %527, i8* %528)
  store i32 0, i32* %17, align 4
  br label %530

530:                                              ; preds = %543, %505
  %531 = load i32, i32* %17, align 4
  %532 = icmp slt i32 %531, 16
  br i1 %532, label %533, label %546

533:                                              ; preds = %530
  %534 = load i32, i32* %17, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 %535
  %537 = load i8, i8* %536, align 1
  %538 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 2
  %539 = load i8*, i8** %538, align 8
  %540 = load i32, i32* %17, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i8, i8* %539, i64 %541
  store i8 %537, i8* %542, align 1
  br label %543

543:                                              ; preds = %533
  %544 = load i32, i32* %17, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %17, align 4
  br label %530

546:                                              ; preds = %530
  %547 = load i32, i32* %7, align 4
  %548 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 0
  store i32 %547, i32* %548, align 8
  %549 = load i32, i32* @ZM_IOCTL_SET_AES_KEY, align 4
  %550 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %549, i32* %550, align 8
  br label %587

551:                                              ; preds = %499
  %552 = load i8**, i8*** %5, align 8
  %553 = getelementptr inbounds i8*, i8** %552, i64 2
  %554 = load i8*, i8** %553, align 8
  %555 = call i32 @strcmp(i8* %554, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0))
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %566, label %557

557:                                              ; preds = %551
  %558 = load i8**, i8*** %5, align 8
  %559 = getelementptr inbounds i8*, i8** %558, i64 3
  %560 = load i8*, i8** %559, align 8
  %561 = call i32 (i8*, i8*, ...) @sscanf(i8* %560, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32* %7)
  %562 = load i32, i32* %7, align 4
  %563 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 0
  store i32 %562, i32* %563, align 8
  %564 = load i32, i32* @ZM_IOCTL_SET_AES_MODE, align 4
  %565 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %564, i32* %565, align 8
  br label %586

566:                                              ; preds = %551
  %567 = load i8**, i8*** %5, align 8
  %568 = getelementptr inbounds i8*, i8** %567, i64 2
  %569 = load i8*, i8** %568, align 8
  %570 = call i32 @strcmp(i8* %569, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0))
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %581, label %572

572:                                              ; preds = %566
  %573 = load i8**, i8*** %5, align 8
  %574 = getelementptr inbounds i8*, i8** %573, i64 3
  %575 = load i8*, i8** %574, align 8
  %576 = call i32 (i8*, i8*, ...) @sscanf(i8* %575, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32* %7)
  %577 = load i32, i32* %7, align 4
  %578 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 0
  store i32 %577, i32* %578, align 8
  %579 = load i32, i32* @ZM_IOCTL_SET_PIBSS_MODE, align 4
  %580 = getelementptr inbounds %struct.zdap_ioctl, %struct.zdap_ioctl* %11, i32 0, i32 3
  store i32 %579, i32* %580, align 8
  br label %585

581:                                              ; preds = %566
  %582 = load i32, i32* @stderr, align 4
  %583 = call i32 (i32, i8*, ...) @fprintf(i32 %582, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i64 0, i64 0))
  %584 = call i32 @exit(i32 1) #3
  unreachable

585:                                              ; preds = %572
  br label %586

586:                                              ; preds = %585, %557
  br label %587

587:                                              ; preds = %586, %546
  br label %588

588:                                              ; preds = %587, %494
  br label %589

589:                                              ; preds = %588, %469
  br label %590

590:                                              ; preds = %589, %446
  br label %591

591:                                              ; preds = %590, %435
  br label %592

592:                                              ; preds = %591, %404
  br label %593

593:                                              ; preds = %592, %386
  br label %594

594:                                              ; preds = %593, %266
  br label %595

595:                                              ; preds = %594, %251
  br label %596

596:                                              ; preds = %595, %242
  br label %597

597:                                              ; preds = %596, %227
  br label %598

598:                                              ; preds = %597, %212
  br label %599

599:                                              ; preds = %598, %203
  br label %600

600:                                              ; preds = %599, %194
  br label %601

601:                                              ; preds = %600, %185
  br label %602

602:                                              ; preds = %601, %176
  br label %603

603:                                              ; preds = %602, %167
  br label %604

604:                                              ; preds = %603, %158
  br label %605

605:                                              ; preds = %604, %149
  br label %606

606:                                              ; preds = %605, %140
  br label %607

607:                                              ; preds = %606, %131
  br label %608

608:                                              ; preds = %607, %122
  br label %609

609:                                              ; preds = %608, %113
  %610 = bitcast %struct.zdap_ioctl* %11 to i8*
  %611 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %9, i32 0, i32 0
  store i8* %610, i8** %611, align 8
  %612 = load i32, i32* %6, align 4
  %613 = call i32 @set_ioctl(i32 %612, %struct.ifreq* %9)
  br label %614

614:                                              ; preds = %609
  %615 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @set_ioctl(i32, %struct.ifreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
