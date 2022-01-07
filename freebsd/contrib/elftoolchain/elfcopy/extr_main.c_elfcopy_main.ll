; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_elfcopy_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_elfcopy_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i32, i8*, i8* }
%struct.sec_action = type { i32, i32, i32, i8* }

@.str = private unnamed_addr constant [31 x i8] c"dB:gG:I:j:K:L:N:O:pR:s:SwW:xXV\00", align 1
@elfcopy_longopts = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"both copy and remove specified\00", align 1
@SEC_REMOVE = common dso_local global i32 0, align 4
@STRIP_ALL = common dso_local global i32 0, align 4
@STRIP_DEBUG = common dso_local global i32 0, align 4
@KEEP_GLOBAL = common dso_local global i32 0, align 4
@SYMOP_KEEPG = common dso_local global i32 0, align 4
@SEC_COPY = common dso_local global i32 0, align 4
@SYMOP_KEEP = common dso_local global i32 0, align 4
@SYMOP_LOCALIZE = common dso_local global i32 0, align 4
@SYMOP_STRIP = common dso_local global i32 0, align 4
@PRESERVE_DATE = common dso_local global i32 0, align 4
@WILDCARD = common dso_local global i32 0, align 4
@SYMOP_WEAKEN = common dso_local global i32 0, align 4
@DISCARD_LOCAL = common dso_local global i32 0, align 4
@DISCARD_LLABEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"--change-section-addr\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"--change-section-lma\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"--change-section-vma\00", align 1
@GAP_FILL = common dso_local global i32 0, align 4
@SYMOP_GLOBALIZE = common dso_local global i32 0, align 4
@LOCALIZE_HIDDEN = common dso_local global i32 0, align 4
@NO_CHANGE_WARN = common dso_local global i32 0, align 4
@STRIP_NONDEBUG = common dso_local global i32 0, align 4
@STRIP_NONDWO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"illegal format for --redefine-sym\00", align 1
@SYMOP_REDEF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"illegal format for --rename-section\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"illegal format for --set-section-flags\00", align 1
@SET_START = common dso_local global i32 0, align 4
@SREC_FORCE_S3 = common dso_local global i32 0, align 4
@SREC_FORCE_LEN = common dso_local global i32 0, align 4
@STRIP_DWO = common dso_local global i32 0, align 4
@STRIP_UNNEEDED = common dso_local global i32 0, align 4
@WEAKEN_ALL = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*, i32, i8**)* @elfcopy_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elfcopy_main(%struct.elfcopy* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.elfcopy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.sec_action*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.elfcopy* %0, %struct.elfcopy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  br label %13

13:                                               ; preds = %370, %3
  %14 = load i32, i32* %5, align 4
  %15 = load i8**, i8*** %6, align 8
  %16 = load i32, i32* @elfcopy_longopts, align 4
  %17 = call i32 @getopt_long(i32 %14, i8** %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %16, i32* null)
  store i32 %17, i32* %12, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %371

19:                                               ; preds = %13
  %20 = load i32, i32* %12, align 4
  switch i32 %20, label %368 [
    i32 66, label %21
    i32 82, label %22
    i32 83, label %41
    i32 103, label %45
    i32 71, label %49
    i32 73, label %59
    i32 115, label %59
    i32 106, label %63
    i32 75, label %82
    i32 76, label %87
    i32 78, label %92
    i32 79, label %97
    i32 112, label %101
    i32 86, label %107
    i32 119, label %109
    i32 87, label %115
    i32 120, label %120
    i32 88, label %126
    i32 162, label %132
    i32 161, label %136
    i32 160, label %140
    i32 159, label %147
    i32 158, label %152
    i32 157, label %157
    i32 156, label %162
    i32 155, label %169
    i32 154, label %170
    i32 153, label %180
    i32 152, label %185
    i32 150, label %190
    i32 151, label %195
    i32 149, label %200
    i32 148, label %206
    i32 147, label %211
    i32 146, label %217
    i32 145, label %221
    i32 144, label %225
    i32 143, label %232
    i32 142, label %236
    i32 141, label %240
    i32 140, label %244
    i32 139, label %259
    i32 138, label %264
    i32 137, label %296
    i32 136, label %300
    i32 135, label %316
    i32 134, label %328
    i32 133, label %334
    i32 132, label %344
    i32 131, label %348
    i32 130, label %353
    i32 129, label %357
    i32 128, label %363
  ]

21:                                               ; preds = %19
  br label %370

22:                                               ; preds = %19
  %23 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %24 = load i8*, i8** @optarg, align 8
  %25 = call %struct.sec_action* @lookup_sec_act(%struct.elfcopy* %23, i8* %24, i32 1)
  store %struct.sec_action* %25, %struct.sec_action** %7, align 8
  %26 = load %struct.sec_action*, %struct.sec_action** %7, align 8
  %27 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EXIT_FAILURE, align 4
  %32 = call i32 @errx(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %22
  %34 = load %struct.sec_action*, %struct.sec_action** %7, align 8
  %35 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* @SEC_REMOVE, align 4
  %37 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %38 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %370

41:                                               ; preds = %19
  %42 = load i32, i32* @STRIP_ALL, align 4
  %43 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %44 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  br label %370

45:                                               ; preds = %19
  %46 = load i32, i32* @STRIP_DEBUG, align 4
  %47 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %48 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  br label %370

49:                                               ; preds = %19
  %50 = load i32, i32* @KEEP_GLOBAL, align 4
  %51 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %52 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %56 = load i8*, i8** @optarg, align 8
  %57 = load i32, i32* @SYMOP_KEEPG, align 4
  %58 = call i32 @add_to_symop_list(%struct.elfcopy* %55, i8* %56, i8* null, i32 %57)
  br label %370

59:                                               ; preds = %19, %19
  %60 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %61 = load i8*, i8** @optarg, align 8
  %62 = call i32 @set_input_target(%struct.elfcopy* %60, i8* %61)
  br label %370

63:                                               ; preds = %19
  %64 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %65 = load i8*, i8** @optarg, align 8
  %66 = call %struct.sec_action* @lookup_sec_act(%struct.elfcopy* %64, i8* %65, i32 1)
  store %struct.sec_action* %66, %struct.sec_action** %7, align 8
  %67 = load %struct.sec_action*, %struct.sec_action** %7, align 8
  %68 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @EXIT_FAILURE, align 4
  %73 = call i32 @errx(i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %63
  %75 = load %struct.sec_action*, %struct.sec_action** %7, align 8
  %76 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load i32, i32* @SEC_COPY, align 4
  %78 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %79 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %370

82:                                               ; preds = %19
  %83 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %84 = load i8*, i8** @optarg, align 8
  %85 = load i32, i32* @SYMOP_KEEP, align 4
  %86 = call i32 @add_to_symop_list(%struct.elfcopy* %83, i8* %84, i8* null, i32 %85)
  br label %370

87:                                               ; preds = %19
  %88 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %89 = load i8*, i8** @optarg, align 8
  %90 = load i32, i32* @SYMOP_LOCALIZE, align 4
  %91 = call i32 @add_to_symop_list(%struct.elfcopy* %88, i8* %89, i8* null, i32 %90)
  br label %370

92:                                               ; preds = %19
  %93 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %94 = load i8*, i8** @optarg, align 8
  %95 = load i32, i32* @SYMOP_STRIP, align 4
  %96 = call i32 @add_to_symop_list(%struct.elfcopy* %93, i8* %94, i8* null, i32 %95)
  br label %370

97:                                               ; preds = %19
  %98 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %99 = load i8*, i8** @optarg, align 8
  %100 = call i32 @set_output_target(%struct.elfcopy* %98, i8* %99)
  br label %370

101:                                              ; preds = %19
  %102 = load i32, i32* @PRESERVE_DATE, align 4
  %103 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %104 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %370

107:                                              ; preds = %19
  %108 = call i32 (...) @print_version()
  br label %370

109:                                              ; preds = %19
  %110 = load i32, i32* @WILDCARD, align 4
  %111 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %112 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %370

115:                                              ; preds = %19
  %116 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %117 = load i8*, i8** @optarg, align 8
  %118 = load i32, i32* @SYMOP_WEAKEN, align 4
  %119 = call i32 @add_to_symop_list(%struct.elfcopy* %116, i8* %117, i8* null, i32 %118)
  br label %370

120:                                              ; preds = %19
  %121 = load i32, i32* @DISCARD_LOCAL, align 4
  %122 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %123 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %370

126:                                              ; preds = %19
  %127 = load i32, i32* @DISCARD_LLABEL, align 4
  %128 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %129 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %370

132:                                              ; preds = %19
  %133 = load i8*, i8** @optarg, align 8
  %134 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %135 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  br label %370

136:                                              ; preds = %19
  %137 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %138 = load i8*, i8** @optarg, align 8
  %139 = call i32 @add_section(%struct.elfcopy* %137, i8* %138)
  br label %370

140:                                              ; preds = %19
  %141 = load i8*, i8** @optarg, align 8
  %142 = call i32 @strtoll(i8* %141, i32* null, i32 0)
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i8*
  %145 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %146 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %145, i32 0, i32 11
  store i8* %144, i8** %146, align 8
  br label %370

147:                                              ; preds = %19
  %148 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load i8*, i8** @optarg, align 8
  %151 = call i32 @parse_sec_address_op(%struct.elfcopy* %148, i32 %149, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %150)
  br label %370

152:                                              ; preds = %19
  %153 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %154 = load i32, i32* %12, align 4
  %155 = load i8*, i8** @optarg, align 8
  %156 = call i32 @parse_sec_address_op(%struct.elfcopy* %153, i32 %154, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %155)
  br label %370

157:                                              ; preds = %19
  %158 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %159 = load i32, i32* %12, align 4
  %160 = load i8*, i8** @optarg, align 8
  %161 = call i32 @parse_sec_address_op(%struct.elfcopy* %158, i32 %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %160)
  br label %370

162:                                              ; preds = %19
  %163 = load i8*, i8** @optarg, align 8
  %164 = call i32 @strtoll(i8* %163, i32* null, i32 0)
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  %167 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %168 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %167, i32 0, i32 10
  store i8* %166, i8** %168, align 8
  br label %370

169:                                              ; preds = %19
  br label %370

170:                                              ; preds = %19
  %171 = load i8*, i8** @optarg, align 8
  %172 = call i32 @strtoul(i8* %171, i32* null, i32 0)
  %173 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %174 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %173, i32 0, i32 9
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* @GAP_FILL, align 4
  %176 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %177 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 8
  br label %370

180:                                              ; preds = %19
  %181 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %182 = load i8*, i8** @optarg, align 8
  %183 = load i32, i32* @SYMOP_GLOBALIZE, align 4
  %184 = call i32 @add_to_symop_list(%struct.elfcopy* %181, i8* %182, i8* null, i32 %183)
  br label %370

185:                                              ; preds = %19
  %186 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %187 = load i8*, i8** @optarg, align 8
  %188 = load i32, i32* @SYMOP_GLOBALIZE, align 4
  %189 = call i32 @parse_symlist_file(%struct.elfcopy* %186, i8* %187, i32 %188)
  br label %370

190:                                              ; preds = %19
  %191 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %192 = load i8*, i8** @optarg, align 8
  %193 = load i32, i32* @SYMOP_KEEP, align 4
  %194 = call i32 @parse_symlist_file(%struct.elfcopy* %191, i8* %192, i32 %193)
  br label %370

195:                                              ; preds = %19
  %196 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %197 = load i8*, i8** @optarg, align 8
  %198 = load i32, i32* @SYMOP_KEEPG, align 4
  %199 = call i32 @parse_symlist_file(%struct.elfcopy* %196, i8* %197, i32 %198)
  br label %370

200:                                              ; preds = %19
  %201 = load i32, i32* @LOCALIZE_HIDDEN, align 4
  %202 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %203 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 8
  br label %370

206:                                              ; preds = %19
  %207 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %208 = load i8*, i8** @optarg, align 8
  %209 = load i32, i32* @SYMOP_LOCALIZE, align 4
  %210 = call i32 @parse_symlist_file(%struct.elfcopy* %207, i8* %208, i32 %209)
  br label %370

211:                                              ; preds = %19
  %212 = load i32, i32* @NO_CHANGE_WARN, align 4
  %213 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %214 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 8
  br label %370

217:                                              ; preds = %19
  %218 = load i32, i32* @STRIP_NONDEBUG, align 4
  %219 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %220 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %219, i32 0, i32 5
  store i32 %218, i32* %220, align 4
  br label %370

221:                                              ; preds = %19
  %222 = load i32, i32* @STRIP_NONDWO, align 4
  %223 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %224 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %223, i32 0, i32 5
  store i32 %222, i32* %224, align 4
  br label %370

225:                                              ; preds = %19
  %226 = load i8*, i8** @optarg, align 8
  %227 = call i32 @strtoull(i8* %226, i32* null, i32 0)
  %228 = sext i32 %227 to i64
  %229 = inttoptr i64 %228 to i8*
  %230 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %231 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %230, i32 0, i32 8
  store i8* %229, i8** %231, align 8
  br label %370

232:                                              ; preds = %19
  %233 = load i8*, i8** @optarg, align 8
  %234 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %235 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %234, i32 0, i32 1
  store i8* %233, i8** %235, align 8
  br label %370

236:                                              ; preds = %19
  %237 = load i8*, i8** @optarg, align 8
  %238 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %239 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %238, i32 0, i32 2
  store i8* %237, i8** %239, align 8
  br label %370

240:                                              ; preds = %19
  %241 = load i8*, i8** @optarg, align 8
  %242 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %243 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %242, i32 0, i32 3
  store i8* %241, i8** %243, align 8
  br label %370

244:                                              ; preds = %19
  %245 = load i8*, i8** @optarg, align 8
  %246 = call i8* @strchr(i8* %245, i8 signext 61)
  store i8* %246, i8** %11, align 8
  %247 = icmp eq i8* %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %244
  %249 = load i32, i32* @EXIT_FAILURE, align 4
  %250 = call i32 @errx(i32 %249, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %251

251:                                              ; preds = %248, %244
  %252 = load i8*, i8** %11, align 8
  %253 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %253, i8** %11, align 8
  store i8 0, i8* %252, align 1
  %254 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %255 = load i8*, i8** @optarg, align 8
  %256 = load i8*, i8** %11, align 8
  %257 = load i32, i32* @SYMOP_REDEF, align 4
  %258 = call i32 @add_to_symop_list(%struct.elfcopy* %254, i8* %255, i8* %256, i32 %257)
  br label %370

259:                                              ; preds = %19
  %260 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %261 = load i8*, i8** @optarg, align 8
  %262 = load i32, i32* @SYMOP_REDEF, align 4
  %263 = call i32 @parse_symlist_file(%struct.elfcopy* %260, i8* %261, i32 %262)
  br label %370

264:                                              ; preds = %19
  %265 = load i8*, i8** @optarg, align 8
  %266 = call i8* @strchr(i8* %265, i8 signext 61)
  store i8* %266, i8** %10, align 8
  %267 = icmp eq i8* %266, null
  br i1 %267, label %268, label %271

268:                                              ; preds = %264
  %269 = load i32, i32* @EXIT_FAILURE, align 4
  %270 = call i32 @errx(i32 %269, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %271

271:                                              ; preds = %268, %264
  %272 = load i8*, i8** %10, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %10, align 8
  store i8 0, i8* %272, align 1
  %274 = load i8*, i8** %10, align 8
  %275 = call i8* @strchr(i8* %274, i8 signext 44)
  store i8* %275, i8** %11, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %280

277:                                              ; preds = %271
  %278 = load i8*, i8** %11, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %11, align 8
  store i8 0, i8* %278, align 1
  br label %280

280:                                              ; preds = %277, %271
  %281 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %282 = load i8*, i8** @optarg, align 8
  %283 = call %struct.sec_action* @lookup_sec_act(%struct.elfcopy* %281, i8* %282, i32 1)
  store %struct.sec_action* %283, %struct.sec_action** %7, align 8
  %284 = load %struct.sec_action*, %struct.sec_action** %7, align 8
  %285 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %284, i32 0, i32 2
  store i32 1, i32* %285, align 8
  %286 = load i8*, i8** %10, align 8
  %287 = load %struct.sec_action*, %struct.sec_action** %7, align 8
  %288 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %287, i32 0, i32 3
  store i8* %286, i8** %288, align 8
  %289 = load i8*, i8** %11, align 8
  %290 = icmp ne i8* %289, null
  br i1 %290, label %291, label %295

291:                                              ; preds = %280
  %292 = load %struct.sec_action*, %struct.sec_action** %7, align 8
  %293 = load i8*, i8** %11, align 8
  %294 = call i32 @parse_sec_flags(%struct.sec_action* %292, i8* %293)
  br label %295

295:                                              ; preds = %291, %280
  br label %370

296:                                              ; preds = %19
  %297 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %298 = load i8*, i8** @optarg, align 8
  %299 = call i32 @set_osabi(%struct.elfcopy* %297, i8* %298)
  br label %370

300:                                              ; preds = %19
  %301 = load i8*, i8** @optarg, align 8
  %302 = call i8* @strchr(i8* %301, i8 signext 61)
  store i8* %302, i8** %11, align 8
  %303 = icmp eq i8* %302, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %300
  %305 = load i32, i32* @EXIT_FAILURE, align 4
  %306 = call i32 @errx(i32 %305, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  br label %307

307:                                              ; preds = %304, %300
  %308 = load i8*, i8** %11, align 8
  %309 = getelementptr inbounds i8, i8* %308, i32 1
  store i8* %309, i8** %11, align 8
  store i8 0, i8* %308, align 1
  %310 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %311 = load i8*, i8** @optarg, align 8
  %312 = call %struct.sec_action* @lookup_sec_act(%struct.elfcopy* %310, i8* %311, i32 1)
  store %struct.sec_action* %312, %struct.sec_action** %7, align 8
  %313 = load %struct.sec_action*, %struct.sec_action** %7, align 8
  %314 = load i8*, i8** %11, align 8
  %315 = call i32 @parse_sec_flags(%struct.sec_action* %313, i8* %314)
  br label %370

316:                                              ; preds = %19
  %317 = load i32, i32* @SET_START, align 4
  %318 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %319 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 8
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 8
  %322 = load i8*, i8** @optarg, align 8
  %323 = call i32 @strtoull(i8* %322, i32* null, i32 0)
  %324 = sext i32 %323 to i64
  %325 = inttoptr i64 %324 to i8*
  %326 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %327 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %326, i32 0, i32 7
  store i8* %325, i8** %327, align 8
  br label %370

328:                                              ; preds = %19
  %329 = load i32, i32* @SREC_FORCE_S3, align 4
  %330 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %331 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %330, i32 0, i32 4
  %332 = load i32, i32* %331, align 8
  %333 = or i32 %332, %329
  store i32 %333, i32* %331, align 8
  br label %370

334:                                              ; preds = %19
  %335 = load i32, i32* @SREC_FORCE_LEN, align 4
  %336 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %337 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 8
  %339 = or i32 %338, %335
  store i32 %339, i32* %337, align 8
  %340 = load i8*, i8** @optarg, align 8
  %341 = call i32 @strtoul(i8* %340, i32* null, i32 0)
  %342 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %343 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %342, i32 0, i32 6
  store i32 %341, i32* %343, align 8
  br label %370

344:                                              ; preds = %19
  %345 = load i32, i32* @STRIP_DWO, align 4
  %346 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %347 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %346, i32 0, i32 5
  store i32 %345, i32* %347, align 4
  br label %370

348:                                              ; preds = %19
  %349 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %350 = load i8*, i8** @optarg, align 8
  %351 = load i32, i32* @SYMOP_STRIP, align 4
  %352 = call i32 @parse_symlist_file(%struct.elfcopy* %349, i8* %350, i32 %351)
  br label %370

353:                                              ; preds = %19
  %354 = load i32, i32* @STRIP_UNNEEDED, align 4
  %355 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %356 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %355, i32 0, i32 5
  store i32 %354, i32* %356, align 4
  br label %370

357:                                              ; preds = %19
  %358 = load i32, i32* @WEAKEN_ALL, align 4
  %359 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %360 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 8
  %362 = or i32 %361, %358
  store i32 %362, i32* %360, align 8
  br label %370

363:                                              ; preds = %19
  %364 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %365 = load i8*, i8** @optarg, align 8
  %366 = load i32, i32* @SYMOP_WEAKEN, align 4
  %367 = call i32 @parse_symlist_file(%struct.elfcopy* %364, i8* %365, i32 %366)
  br label %370

368:                                              ; preds = %19
  %369 = call i32 (...) @elfcopy_usage()
  br label %370

370:                                              ; preds = %368, %363, %357, %353, %348, %344, %334, %328, %316, %307, %296, %295, %259, %251, %240, %236, %232, %225, %221, %217, %211, %206, %200, %195, %190, %185, %180, %170, %169, %162, %157, %152, %147, %140, %136, %132, %126, %120, %115, %109, %107, %101, %97, %92, %87, %82, %74, %59, %49, %45, %41, %33, %21
  br label %13

371:                                              ; preds = %13
  %372 = load i64, i64* @optind, align 8
  %373 = load i32, i32* %5, align 4
  %374 = sext i32 %373 to i64
  %375 = sub nsw i64 %374, %372
  %376 = trunc i64 %375 to i32
  store i32 %376, i32* %5, align 4
  %377 = load i64, i64* @optind, align 8
  %378 = load i8**, i8*** %6, align 8
  %379 = getelementptr inbounds i8*, i8** %378, i64 %377
  store i8** %379, i8*** %6, align 8
  %380 = load i32, i32* %5, align 4
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %385, label %382

382:                                              ; preds = %371
  %383 = load i32, i32* %5, align 4
  %384 = icmp sgt i32 %383, 2
  br i1 %384, label %385, label %387

385:                                              ; preds = %382, %371
  %386 = call i32 (...) @elfcopy_usage()
  br label %387

387:                                              ; preds = %385, %382
  %388 = load i8**, i8*** %6, align 8
  %389 = getelementptr inbounds i8*, i8** %388, i64 0
  %390 = load i8*, i8** %389, align 8
  store i8* %390, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %391 = load i32, i32* %5, align 4
  %392 = icmp sgt i32 %391, 1
  br i1 %392, label %393, label %397

393:                                              ; preds = %387
  %394 = load i8**, i8*** %6, align 8
  %395 = getelementptr inbounds i8*, i8** %394, i64 1
  %396 = load i8*, i8** %395, align 8
  store i8* %396, i8** %9, align 8
  br label %397

397:                                              ; preds = %393, %387
  %398 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %399 = load i8*, i8** %8, align 8
  %400 = load i8*, i8** %9, align 8
  %401 = call i32 @create_file(%struct.elfcopy* %398, i8* %399, i8* %400)
  ret void
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local %struct.sec_action* @lookup_sec_act(%struct.elfcopy*, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @add_to_symop_list(%struct.elfcopy*, i8*, i8*, i32) #1

declare dso_local i32 @set_input_target(%struct.elfcopy*, i8*) #1

declare dso_local i32 @set_output_target(%struct.elfcopy*, i8*) #1

declare dso_local i32 @print_version(...) #1

declare dso_local i32 @add_section(%struct.elfcopy*, i8*) #1

declare dso_local i32 @strtoll(i8*, i32*, i32) #1

declare dso_local i32 @parse_sec_address_op(%struct.elfcopy*, i32, i8*, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @parse_symlist_file(%struct.elfcopy*, i8*, i32) #1

declare dso_local i32 @strtoull(i8*, i32*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_sec_flags(%struct.sec_action*, i8*) #1

declare dso_local i32 @set_osabi(%struct.elfcopy*, i8*) #1

declare dso_local i32 @elfcopy_usage(...) #1

declare dso_local i32 @create_file(%struct.elfcopy*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
