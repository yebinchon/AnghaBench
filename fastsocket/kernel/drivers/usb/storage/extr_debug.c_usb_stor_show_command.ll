; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_debug.c_usb_stor_show_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_debug.c_usb_stor_show_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"TEST_UNIT_READY\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"REZERO_UNIT\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"REQUEST_SENSE\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"FORMAT_UNIT\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"READ_BLOCK_LIMITS\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"REASSIGN_BLOCKS\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"READ_6\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"WRITE_6\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"SEEK_6\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"READ_REVERSE\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"WRITE_FILEMARKS\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"SPACE\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"INQUIRY\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"RECOVER_BUFFERED_DATA\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"MODE_SELECT\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"RESERVE\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"RELEASE\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"ERASE\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"MODE_SENSE\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"START_STOP\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"RECEIVE_DIAGNOSTIC\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"SEND_DIAGNOSTIC\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"ALLOW_MEDIUM_REMOVAL\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"SET_WINDOW\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"READ_CAPACITY\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"READ_10\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"WRITE_10\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"SEEK_10\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"WRITE_VERIFY\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"VERIFY\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"SEARCH_HIGH\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"SEARCH_EQUAL\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"SEARCH_LOW\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"SET_LIMITS\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"READ_POSITION\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"SYNCHRONIZE_CACHE\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"LOCK_UNLOCK_CACHE\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"READ_DEFECT_DATA\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"MEDIUM_SCAN\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"COMPARE\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"COPY_VERIFY\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"WRITE_BUFFER\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"READ_BUFFER\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"UPDATE_BLOCK\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"READ_LONG\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"WRITE_LONG\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"CHANGE_DEFINITION\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"WRITE_SAME\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"READ SUBCHANNEL\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"READ_TOC\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"READ HEADER\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"PLAY AUDIO (10)\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"PLAY AUDIO MSF\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"GET EVENT/STATUS NOTIFICATION\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"PAUSE/RESUME\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"LOG_SELECT\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"LOG_SENSE\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"STOP PLAY/SCAN\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"READ DISC INFORMATION\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"READ TRACK INFORMATION\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"RESERVE TRACK\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"SEND OPC\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"MODE_SELECT_10\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"REPAIR TRACK\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"READ MASTER CUE\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"MODE_SENSE_10\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"CLOSE TRACK/SESSION\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"READ BUFFER CAPACITY\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"SEND CUE SHEET\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"BLANK\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"REPORT LUNS\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"MOVE_MEDIUM or PLAY AUDIO (12)\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"READ_12\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"WRITE_12\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"WRITE_VERIFY_12\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"SEARCH_HIGH_12\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"SEARCH_EQUAL_12\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"SEARCH_LOW_12\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"SEND_VOLUME_TAG\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"READ_ELEMENT_STATUS\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"READ CD MSF\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"SCAN\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"SET CD SPEED\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"MECHANISM STATUS\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"READ CD\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"WRITE CONTINUE\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"WRITE_LONG_2\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"(unknown command)\00", align 1
@.str.89 = private unnamed_addr constant [23 x i8] c"Command %s (%d bytes)\0A\00", align 1
@.str.90 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.91 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_stor_show_command(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  store i8* null, i8** %3, align 8
  %5 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %98 [
    i32 140, label %10
    i32 156, label %11
    i32 158, label %12
    i32 205, label %13
    i32 172, label %14
    i32 163, label %15
    i32 173, label %16
    i32 135, label %17
    i32 148, label %18
    i32 165, label %19
    i32 133, label %20
    i32 143, label %21
    i32 185, label %22
    i32 161, label %23
    i32 180, label %24
    i32 157, label %25
    i32 160, label %26
    i32 208, label %27
    i32 206, label %28
    i32 178, label %29
    i32 142, label %30
    i32 162, label %31
    i32 147, label %32
    i32 211, label %33
    i32 144, label %34
    i32 170, label %35
    i32 175, label %36
    i32 137, label %37
    i32 149, label %38
    i32 129, label %39
    i32 138, label %40
    i32 153, label %41
    i32 155, label %42
    i32 151, label %43
    i32 145, label %44
    i32 166, label %45
    i32 141, label %46
    i32 184, label %47
    i32 169, label %48
    i32 181, label %49
    i32 209, label %50
    i32 207, label %51
    i32 134, label %52
    i32 171, label %53
    i32 139, label %54
    i32 167, label %55
    i32 132, label %56
    i32 210, label %57
    i32 130, label %58
    i32 193, label %59
    i32 164, label %60
    i32 194, label %61
    i32 199, label %62
    i32 198, label %63
    i32 202, label %64
    i32 200, label %65
    i32 183, label %66
    i32 182, label %67
    i32 186, label %68
    i32 195, label %69
    i32 192, label %70
    i32 190, label %71
    i32 188, label %72
    i32 179, label %73
    i32 191, label %74
    i32 89, label %75
    i32 177, label %76
    i32 203, label %77
    i32 92, label %78
    i32 93, label %79
    i32 204, label %80
    i32 159, label %81
    i32 176, label %82
    i32 174, label %83
    i32 136, label %84
    i32 128, label %85
    i32 152, label %86
    i32 154, label %87
    i32 150, label %88
    i32 146, label %89
    i32 168, label %90
    i32 196, label %91
    i32 189, label %92
    i32 187, label %93
    i32 201, label %94
    i32 197, label %95
    i32 225, label %96
    i32 131, label %97
  ]

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %99

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %99

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %99

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %99

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %99

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %99

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %99

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %99

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %99

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %99

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %99

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %99

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %99

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %99

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %99

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %99

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %99

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %99

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %99

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %99

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %99

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %99

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %99

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %99

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %99

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8** %3, align 8
  br label %99

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %99

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8** %3, align 8
  br label %99

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i8** %3, align 8
  br label %99

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i8** %3, align 8
  br label %99

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %99

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8** %3, align 8
  br label %99

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i8** %3, align 8
  br label %99

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8** %3, align 8
  br label %99

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8** %3, align 8
  br label %99

45:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0), i8** %3, align 8
  br label %99

46:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0), i8** %3, align 8
  br label %99

47:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0), i8** %3, align 8
  br label %99

48:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8** %3, align 8
  br label %99

49:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i8** %3, align 8
  br label %99

50:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), i8** %3, align 8
  br label %99

51:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i8** %3, align 8
  br label %99

52:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), i8** %3, align 8
  br label %99

53:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i8** %3, align 8
  br label %99

54:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0), i8** %3, align 8
  br label %99

55:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0), i8** %3, align 8
  br label %99

56:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0), i8** %3, align 8
  br label %99

57:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i64 0, i64 0), i8** %3, align 8
  br label %99

58:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i64 0, i64 0), i8** %3, align 8
  br label %99

59:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i64 0, i64 0), i8** %3, align 8
  br label %99

60:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8** %3, align 8
  br label %99

61:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8** %3, align 8
  br label %99

62:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i8** %3, align 8
  br label %99

63:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i64 0, i64 0), i8** %3, align 8
  br label %99

64:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i64 0, i64 0), i8** %3, align 8
  br label %99

65:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i64 0, i64 0), i8** %3, align 8
  br label %99

66:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i8** %3, align 8
  br label %99

67:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i8** %3, align 8
  br label %99

68:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i64 0, i64 0), i8** %3, align 8
  br label %99

69:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.59, i64 0, i64 0), i8** %3, align 8
  br label %99

70:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i64 0, i64 0), i8** %3, align 8
  br label %99

71:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i64 0, i64 0), i8** %3, align 8
  br label %99

72:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i64 0, i64 0), i8** %3, align 8
  br label %99

73:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i64 0, i64 0), i8** %3, align 8
  br label %99

74:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i64 0, i64 0), i8** %3, align 8
  br label %99

75:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i64 0, i64 0), i8** %3, align 8
  br label %99

76:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i64 0, i64 0), i8** %3, align 8
  br label %99

77:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i64 0, i64 0), i8** %3, align 8
  br label %99

78:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i64 0, i64 0), i8** %3, align 8
  br label %99

79:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i8** %3, align 8
  br label %99

80:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0), i8** %3, align 8
  br label %99

81:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0), i8** %3, align 8
  br label %99

82:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.72, i64 0, i64 0), i8** %3, align 8
  br label %99

83:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i8** %3, align 8
  br label %99

84:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i8** %3, align 8
  br label %99

85:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i64 0, i64 0), i8** %3, align 8
  br label %99

86:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i64 0, i64 0), i8** %3, align 8
  br label %99

87:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i64 0, i64 0), i8** %3, align 8
  br label %99

88:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i64 0, i64 0), i8** %3, align 8
  br label %99

89:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i64 0, i64 0), i8** %3, align 8
  br label %99

90:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.80, i64 0, i64 0), i8** %3, align 8
  br label %99

91:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i8** %3, align 8
  br label %99

92:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i64 0, i64 0), i8** %3, align 8
  br label %99

93:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i64 0, i64 0), i8** %3, align 8
  br label %99

94:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i64 0, i64 0), i8** %3, align 8
  br label %99

95:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i64 0, i64 0), i8** %3, align 8
  br label %99

96:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i64 0, i64 0), i8** %3, align 8
  br label %99

97:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.87, i64 0, i64 0), i8** %3, align 8
  br label %99

98:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.88, i64 0, i64 0), i8** %3, align 8
  br label %99

99:                                               ; preds = %98, %97, %96, %95, %94, %93, %92, %91, %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10
  %100 = load i8*, i8** %3, align 8
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %102 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.89, i64 0, i64 0), i8* %100, i32 %103)
  %105 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.90, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %126, %99
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %109 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %113, 16
  br label %115

115:                                              ; preds = %112, %106
  %116 = phi i1 [ false, %106 ], [ %114, %112 ]
  br i1 %116, label %117, label %129

117:                                              ; preds = %115
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %119 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i8*, ...) @US_DEBUGPX(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %117
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %4, align 4
  br label %106

129:                                              ; preds = %115
  %130 = call i32 (i8*, ...) @US_DEBUGPX(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i64 0, i64 0))
  ret void
}

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i32 @US_DEBUGPX(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
