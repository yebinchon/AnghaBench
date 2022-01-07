; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ls/extr_ls.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ls/extr_ls.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winsize = type { i32 }

@main.dot = internal global [2 x i8] c".\00", align 1
@main.dotav = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dot, i32 0, i32 0), i8* null], align 16
@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@termwidth = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@f_nonprint = common dso_local global i32 0, align 4
@f_singlecol = common dso_local global i32 0, align 4
@FTS_PHYSICAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"LS_SAMESORT\00", align 1
@f_samesort = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"+1ABCD:FGHILPRSTUWXZabcdfghiklmnopqrstuwxy,\00", align 1
@long_opts = common dso_local global i32 0, align 4
@f_longform = common dso_local global i32 0, align 4
@f_stream = common dso_local global i32 0, align 4
@f_sortacross = common dso_local global i32 0, align 4
@f_statustime = common dso_local global i32 0, align 4
@f_accesstime = common dso_local global i32 0, align 4
@f_birthtime = common dso_local global i32 0, align 4
@f_nosort = common dso_local global i32 0, align 4
@FTS_SEEDOT = common dso_local global i32 0, align 4
@f_listdot = common dso_local global i32 0, align 4
@f_sizesort = common dso_local global i32 0, align 4
@f_timesort = common dso_local global i32 0, align 4
@f_thousands = common dso_local global i32 0, align 4
@f_octal = common dso_local global i32 0, align 4
@f_octal_escape = common dso_local global i32 0, align 4
@optarg = common dso_local global i32* null, align 8
@f_timeformat = common dso_local global i32* null, align 8
@f_type = common dso_local global i32 0, align 4
@f_slash = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"CLICOLOR\00", align 1
@FTS_COMFOLLOW = common dso_local global i32 0, align 4
@f_nofollow = common dso_local global i32 0, align 4
@f_noautodot = common dso_local global i32 0, align 4
@FTS_LOGICAL = common dso_local global i32 0, align 4
@f_recursive = common dso_local global i32 0, align 4
@f_sectime = common dso_local global i32 0, align 4
@f_whiteout = common dso_local global i32 0, align 4
@f_label = common dso_local global i32 0, align 4
@f_listdir = common dso_local global i32 0, align 4
@f_humanval = common dso_local global i32 0, align 4
@f_inode = common dso_local global i32 0, align 4
@f_kblocks = common dso_local global i32 0, align 4
@f_numericonly = common dso_local global i32 0, align 4
@f_flags = common dso_local global i32 0, align 4
@f_reversesort = common dso_local global i32 0, align 4
@f_size = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"color support not compiled in\00", align 1
@FTS_NOSTAT = common dso_local global i32 0, align 4
@blocksize = common dso_local global i32 0, align 4
@revnamecmp = common dso_local global i32 0, align 4
@sortfcn = common dso_local global i32 0, align 4
@revsizecmp = common dso_local global i32 0, align 4
@revacccmp = common dso_local global i32 0, align 4
@revbirthcmp = common dso_local global i32 0, align 4
@revstatcmp = common dso_local global i32 0, align 4
@revmodcmp = common dso_local global i32 0, align 4
@namecmp = common dso_local global i32 0, align 4
@sizecmp = common dso_local global i32 0, align 4
@acccmp = common dso_local global i32 0, align 4
@birthcmp = common dso_local global i32 0, align 4
@statcmp = common dso_local global i32 0, align 4
@modcmp = common dso_local global i32 0, align 4
@printscol = common dso_local global i32 0, align 4
@printfcn = common dso_local global i32 0, align 4
@printlong = common dso_local global i32 0, align 4
@printstream = common dso_local global i32 0, align 4
@printcol = common dso_local global i32 0, align 4
@rval = common dso_local global i32 0, align 4
@COLORFLAG_ALWAYS = common dso_local global i64 0, align 8
@COLORFLAG_AUTO = common dso_local global i64 0, align 8
@COLORFLAG_NEVER = common dso_local global i64 0, align 8
@FTS_WHITEOUT = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@ansi_bgcol = common dso_local global i8* null, align 8
@ansi_coloff = common dso_local global i8* null, align 8
@ansi_fgcol = common dso_local global i8* null, align 8
@attrs_off = common dso_local global i8* null, align 8
@colorflag = common dso_local global i64 0, align 8
@colorquit = common dso_local global i32 0, align 4
@enter_bold = common dso_local global i8* null, align 8
@explicitansi = common dso_local global i32 0, align 4
@f_color = common dso_local global i32 0, align 4
@f_notabs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.winsize, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %11, align 8
  %12 = load i32, i32* @LC_ALL, align 4
  %13 = call i32 @setlocale(i32 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @STDOUT_FILENO, align 4
  %15 = call i64 @isatty(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %2
  store i32 80, i32* @termwidth, align 4
  %18 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i8*, i8** %10, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* @INT_MAX, align 4
  %28 = call i32 @strtonum(i8* %26, i32 0, i32 %27, i8** %11)
  store i32 %28, i32* @termwidth, align 4
  br label %42

29:                                               ; preds = %20, %17
  %30 = load i32, i32* @STDOUT_FILENO, align 4
  %31 = load i32, i32* @TIOCGWINSZ, align 4
  %32 = call i32 @ioctl(i32 %30, i32 %31, %struct.winsize* %6)
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.winsize, %struct.winsize* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.winsize, %struct.winsize* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* @termwidth, align 4
  br label %41

41:                                               ; preds = %38, %34, %29
  br label %42

42:                                               ; preds = %41, %25
  store i32 1, i32* @f_nonprint, align 4
  br label %52

43:                                               ; preds = %2
  store i32 1, i32* @f_singlecol, align 4
  %44 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* @INT_MAX, align 4
  %50 = call i32 @strtonum(i8* %48, i32 0, i32 %49, i8** %11)
  store i32 %50, i32* @termwidth, align 4
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %42
  %53 = load i8*, i8** %11, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 80, i32* @termwidth, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* @FTS_PHYSICAL, align 4
  store i32 %57, i32* %8, align 4
  %58 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 1, i32* @f_samesort, align 4
  br label %61

61:                                               ; preds = %60, %56
  br label %62

62:                                               ; preds = %139, %61
  %63 = load i32, i32* %4, align 4
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* @long_opts, align 4
  %66 = call i32 @getopt_long(i32 %63, i8** %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32* null)
  store i32 %66, i32* %7, align 4
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %140

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  switch i32 %69, label %136 [
    i32 49, label %70
    i32 67, label %71
    i32 108, label %72
    i32 120, label %73
    i32 99, label %74
    i32 117, label %75
    i32 85, label %76
    i32 102, label %77
    i32 97, label %78
    i32 65, label %82
    i32 83, label %83
    i32 116, label %84
    i32 44, label %85
    i32 66, label %86
    i32 68, label %87
    i32 70, label %89
    i32 71, label %90
    i32 72, label %92
    i32 73, label %96
    i32 76, label %97
    i32 80, label %105
    i32 82, label %117
    i32 84, label %118
    i32 87, label %119
    i32 90, label %120
    i32 98, label %121
    i32 100, label %122
    i32 103, label %123
    i32 104, label %124
    i32 105, label %125
    i32 107, label %126
    i32 109, label %127
    i32 110, label %128
    i32 111, label %129
    i32 112, label %130
    i32 113, label %131
    i32 114, label %132
    i32 115, label %133
    i32 119, label %134
    i32 121, label %135
    i32 63, label %137
  ]

70:                                               ; preds = %68
  store i32 1, i32* @f_singlecol, align 4
  store i32 0, i32* @f_longform, align 4
  store i32 0, i32* @f_stream, align 4
  br label %139

71:                                               ; preds = %68
  store i32 0, i32* @f_singlecol, align 4
  store i32 0, i32* @f_longform, align 4
  store i32 0, i32* @f_sortacross, align 4
  br label %139

72:                                               ; preds = %68
  store i32 1, i32* @f_longform, align 4
  store i32 0, i32* @f_singlecol, align 4
  store i32 0, i32* @f_stream, align 4
  br label %139

73:                                               ; preds = %68
  store i32 1, i32* @f_sortacross, align 4
  store i32 0, i32* @f_longform, align 4
  store i32 0, i32* @f_singlecol, align 4
  br label %139

74:                                               ; preds = %68
  store i32 1, i32* @f_statustime, align 4
  store i32 0, i32* @f_accesstime, align 4
  store i32 0, i32* @f_birthtime, align 4
  br label %139

75:                                               ; preds = %68
  store i32 1, i32* @f_accesstime, align 4
  store i32 0, i32* @f_statustime, align 4
  store i32 0, i32* @f_birthtime, align 4
  br label %139

76:                                               ; preds = %68
  store i32 1, i32* @f_birthtime, align 4
  store i32 0, i32* @f_accesstime, align 4
  store i32 0, i32* @f_statustime, align 4
  br label %139

77:                                               ; preds = %68
  store i32 1, i32* @f_nosort, align 4
  br label %78

78:                                               ; preds = %68, %77
  %79 = load i32, i32* @FTS_SEEDOT, align 4
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %68, %78
  store i32 1, i32* @f_listdot, align 4
  br label %139

83:                                               ; preds = %68
  store i32 1, i32* @f_sizesort, align 4
  store i32 0, i32* @f_timesort, align 4
  br label %139

84:                                               ; preds = %68
  store i32 1, i32* @f_timesort, align 4
  store i32 0, i32* @f_sizesort, align 4
  br label %139

85:                                               ; preds = %68
  store i32 1, i32* @f_thousands, align 4
  br label %139

86:                                               ; preds = %68
  store i32 0, i32* @f_nonprint, align 4
  store i32 1, i32* @f_octal, align 4
  store i32 0, i32* @f_octal_escape, align 4
  br label %139

87:                                               ; preds = %68
  %88 = load i32*, i32** @optarg, align 8
  store i32* %88, i32** @f_timeformat, align 8
  br label %139

89:                                               ; preds = %68
  store i32 1, i32* @f_type, align 4
  store i32 0, i32* @f_slash, align 4
  br label %139

90:                                               ; preds = %68
  %91 = call i32 @setenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %139

92:                                               ; preds = %68
  %93 = load i32, i32* @FTS_COMFOLLOW, align 4
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  store i32 0, i32* @f_nofollow, align 4
  br label %139

96:                                               ; preds = %68
  store i32 1, i32* @f_noautodot, align 4
  br label %139

97:                                               ; preds = %68
  %98 = load i32, i32* @FTS_PHYSICAL, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %8, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* @FTS_LOGICAL, align 4
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  store i32 0, i32* @f_nofollow, align 4
  br label %139

105:                                              ; preds = %68
  %106 = load i32, i32* @FTS_COMFOLLOW, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %8, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* @FTS_LOGICAL, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %8, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* @FTS_PHYSICAL, align 4
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %8, align 4
  store i32 1, i32* @f_nofollow, align 4
  br label %139

117:                                              ; preds = %68
  store i32 1, i32* @f_recursive, align 4
  br label %139

118:                                              ; preds = %68
  store i32 1, i32* @f_sectime, align 4
  br label %139

119:                                              ; preds = %68
  store i32 1, i32* @f_whiteout, align 4
  br label %139

120:                                              ; preds = %68
  store i32 1, i32* @f_label, align 4
  br label %139

121:                                              ; preds = %68
  store i32 0, i32* @f_nonprint, align 4
  store i32 0, i32* @f_octal, align 4
  store i32 1, i32* @f_octal_escape, align 4
  br label %139

122:                                              ; preds = %68
  store i32 1, i32* @f_listdir, align 4
  store i32 0, i32* @f_recursive, align 4
  br label %139

123:                                              ; preds = %68
  br label %139

124:                                              ; preds = %68
  store i32 1, i32* @f_humanval, align 4
  br label %139

125:                                              ; preds = %68
  store i32 1, i32* @f_inode, align 4
  br label %139

126:                                              ; preds = %68
  store i32 0, i32* @f_humanval, align 4
  store i32 1, i32* @f_kblocks, align 4
  br label %139

127:                                              ; preds = %68
  store i32 1, i32* @f_stream, align 4
  store i32 0, i32* @f_singlecol, align 4
  store i32 0, i32* @f_longform, align 4
  br label %139

128:                                              ; preds = %68
  store i32 1, i32* @f_numericonly, align 4
  br label %139

129:                                              ; preds = %68
  store i32 1, i32* @f_flags, align 4
  br label %139

130:                                              ; preds = %68
  store i32 1, i32* @f_slash, align 4
  store i32 1, i32* @f_type, align 4
  br label %139

131:                                              ; preds = %68
  store i32 1, i32* @f_nonprint, align 4
  store i32 0, i32* @f_octal, align 4
  store i32 0, i32* @f_octal_escape, align 4
  br label %139

132:                                              ; preds = %68
  store i32 1, i32* @f_reversesort, align 4
  br label %139

133:                                              ; preds = %68
  store i32 1, i32* @f_size, align 4
  br label %139

134:                                              ; preds = %68
  store i32 0, i32* @f_nonprint, align 4
  store i32 0, i32* @f_octal, align 4
  store i32 0, i32* @f_octal_escape, align 4
  br label %139

135:                                              ; preds = %68
  store i32 1, i32* @f_samesort, align 4
  br label %139

136:                                              ; preds = %68
  br label %137

137:                                              ; preds = %68, %136
  %138 = call i32 (...) @usage()
  br label %139

139:                                              ; preds = %137, %135, %134, %133, %132, %131, %130, %129, %128, %127, %126, %125, %124, %123, %122, %121, %120, %119, %118, %117, %105, %97, %96, %92, %90, %89, %87, %86, %85, %84, %83, %82, %76, %75, %74, %73, %72, %71, %70
  br label %62

140:                                              ; preds = %62
  %141 = load i64, i64* @optind, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = sub nsw i64 %143, %141
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %4, align 4
  %146 = load i64, i64* @optind, align 8
  %147 = load i8**, i8*** %5, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 %146
  store i8** %148, i8*** %5, align 8
  %149 = load i32, i32* @f_listdot, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %140
  %152 = call i64 (...) @getuid()
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i32, i32* @f_noautodot, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %154
  store i32 1, i32* @f_listdot, align 4
  br label %158

158:                                              ; preds = %157, %154, %151, %140
  %159 = call i64 (...) @do_color()
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %158
  %164 = load i32, i32* @f_inode, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %185, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* @f_longform, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %185, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* @f_size, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %185, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* @f_timesort, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %185, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* @f_sizesort, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* @f_type, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* @FTS_NOSTAT, align 4
  %183 = load i32, i32* %8, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %8, align 4
  br label %185

185:                                              ; preds = %181, %178, %175, %172, %169, %166, %163
  %186 = load i32, i32* @f_nofollow, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %204, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* @f_longform, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %204, label %191

191:                                              ; preds = %188
  %192 = load i32, i32* @f_listdir, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %204, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* @f_type, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i32, i32* @f_slash, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197, %194
  %201 = load i32, i32* @FTS_COMFOLLOW, align 4
  %202 = load i32, i32* %8, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %8, align 4
  br label %204

204:                                              ; preds = %200, %197, %191, %188, %185
  %205 = load i32, i32* @f_inode, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %213, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* @f_longform, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* @f_size, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %210, %207, %204
  %214 = load i32, i32* @f_kblocks, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  store i32 2, i32* @blocksize, align 4
  br label %221

217:                                              ; preds = %213
  %218 = call i32 @getbsize(i32* %9, i32* @blocksize)
  %219 = load i32, i32* @blocksize, align 4
  %220 = sdiv i32 %219, 512
  store i32 %220, i32* @blocksize, align 4
  br label %221

221:                                              ; preds = %217, %216
  br label %222

222:                                              ; preds = %221, %210
  %223 = load i32, i32* @f_reversesort, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %260

225:                                              ; preds = %222
  %226 = load i32, i32* @f_timesort, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %225
  %229 = load i32, i32* @f_sizesort, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %228
  %232 = load i32, i32* @revnamecmp, align 4
  store i32 %232, i32* @sortfcn, align 4
  br label %259

233:                                              ; preds = %228, %225
  %234 = load i32, i32* @f_sizesort, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  %237 = load i32, i32* @revsizecmp, align 4
  store i32 %237, i32* @sortfcn, align 4
  br label %258

238:                                              ; preds = %233
  %239 = load i32, i32* @f_accesstime, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %238
  %242 = load i32, i32* @revacccmp, align 4
  store i32 %242, i32* @sortfcn, align 4
  br label %257

243:                                              ; preds = %238
  %244 = load i32, i32* @f_birthtime, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = load i32, i32* @revbirthcmp, align 4
  store i32 %247, i32* @sortfcn, align 4
  br label %256

248:                                              ; preds = %243
  %249 = load i32, i32* @f_statustime, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = load i32, i32* @revstatcmp, align 4
  store i32 %252, i32* @sortfcn, align 4
  br label %255

253:                                              ; preds = %248
  %254 = load i32, i32* @revmodcmp, align 4
  store i32 %254, i32* @sortfcn, align 4
  br label %255

255:                                              ; preds = %253, %251
  br label %256

256:                                              ; preds = %255, %246
  br label %257

257:                                              ; preds = %256, %241
  br label %258

258:                                              ; preds = %257, %236
  br label %259

259:                                              ; preds = %258, %231
  br label %295

260:                                              ; preds = %222
  %261 = load i32, i32* @f_timesort, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %260
  %264 = load i32, i32* @f_sizesort, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %263
  %267 = load i32, i32* @namecmp, align 4
  store i32 %267, i32* @sortfcn, align 4
  br label %294

268:                                              ; preds = %263, %260
  %269 = load i32, i32* @f_sizesort, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = load i32, i32* @sizecmp, align 4
  store i32 %272, i32* @sortfcn, align 4
  br label %293

273:                                              ; preds = %268
  %274 = load i32, i32* @f_accesstime, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %273
  %277 = load i32, i32* @acccmp, align 4
  store i32 %277, i32* @sortfcn, align 4
  br label %292

278:                                              ; preds = %273
  %279 = load i32, i32* @f_birthtime, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %278
  %282 = load i32, i32* @birthcmp, align 4
  store i32 %282, i32* @sortfcn, align 4
  br label %291

283:                                              ; preds = %278
  %284 = load i32, i32* @f_statustime, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %283
  %287 = load i32, i32* @statcmp, align 4
  store i32 %287, i32* @sortfcn, align 4
  br label %290

288:                                              ; preds = %283
  %289 = load i32, i32* @modcmp, align 4
  store i32 %289, i32* @sortfcn, align 4
  br label %290

290:                                              ; preds = %288, %286
  br label %291

291:                                              ; preds = %290, %281
  br label %292

292:                                              ; preds = %291, %276
  br label %293

293:                                              ; preds = %292, %271
  br label %294

294:                                              ; preds = %293, %266
  br label %295

295:                                              ; preds = %294, %259
  %296 = load i32, i32* @f_singlecol, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %295
  %299 = load i32, i32* @printscol, align 4
  store i32 %299, i32* @printfcn, align 4
  br label %314

300:                                              ; preds = %295
  %301 = load i32, i32* @f_longform, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %300
  %304 = load i32, i32* @printlong, align 4
  store i32 %304, i32* @printfcn, align 4
  br label %313

305:                                              ; preds = %300
  %306 = load i32, i32* @f_stream, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %305
  %309 = load i32, i32* @printstream, align 4
  store i32 %309, i32* @printfcn, align 4
  br label %312

310:                                              ; preds = %305
  %311 = load i32, i32* @printcol, align 4
  store i32 %311, i32* @printfcn, align 4
  br label %312

312:                                              ; preds = %310, %308
  br label %313

313:                                              ; preds = %312, %303
  br label %314

314:                                              ; preds = %313, %298
  %315 = load i32, i32* %4, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %314
  %318 = load i32, i32* %4, align 4
  %319 = load i8**, i8*** %5, align 8
  %320 = load i32, i32* %8, align 4
  %321 = call i32 @traverse(i32 %318, i8** %319, i32 %320)
  br label %325

322:                                              ; preds = %314
  %323 = load i32, i32* %8, align 4
  %324 = call i32 @traverse(i32 1, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @main.dotav, i64 0, i64 0), i32 %323)
  br label %325

325:                                              ; preds = %322, %317
  %326 = load i32, i32* @rval, align 4
  %327 = call i32 @exit(i32 %326) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @ioctl(i32, i32, %struct.winsize*) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i64 @do_color(...) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @getbsize(i32*, i32*) #1

declare dso_local i32 @traverse(i32, i8**, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
